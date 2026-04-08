import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class DioConfig {
  static Dio dio = Dio(BaseOptions(
      baseUrl: "https://",
      sendTimeout: Duration(seconds: 150),
      receiveTimeout: Duration(seconds: 150),
      connectTimeout: Duration(seconds: 150)));
}

class DioSettings extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    print('On error dio settings $err');
    
    if (err.response?.statusCode == 401) {
      print('oxirgi zapros path ${err.requestOptions.path}');
      
      // * /ceate-product ->
      if (err.requestOptions.path.contains('token/refresh/')) {
        return handler.next(err);
      }
      
      // * token expire
      final newToken = await _refreshToken();
      
      if (newToken != null) {
        try {
          // * retry with new token
          final response = await _retry(err.requestOptions, newToken);
          return handler.resolve(response); // Important: resolve with the response
        } catch (error) {
          // If retry fails, pass the original error
          return handler.next(err);
        }
      } else {
        // * refresh dio exception - redirect to login
        // You might want to clear storage and navigate to login
        await GetStorage().erase(); // Clear all stored data
        return handler.next(err);
      }
    }
    
    // For non-401 errors, just pass them through
    return handler.next(err);
  }

  Future<String?> _refreshToken() async {
    try {
      final refreshToken = GetStorage().read('refresh');
      if (refreshToken == null) return null;
      
      final res = await DioConfig.dio.post("token/refresh/",
          data: {"refresh": refreshToken});

      if (res.statusCode! >= 200 && res.statusCode! < 300) {
        print('Token yangilandi ${res.data}');
        final newAccessToken = res.data['access'];
        await GetStorage().write('access', newAccessToken);
        return newAccessToken;
      } else {
        return null;
      }
    } catch (e) {
      print('Refresh token error: $e');
      return null;
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions, String newToken) async {
    final headers = Map<String, dynamic>.from(requestOptions.headers);
    headers['Authorization'] = 'Bearer $newToken';
    
    final options = Options(
      method: requestOptions.method,
      headers: headers,
    );
    
    return DioConfig.dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
