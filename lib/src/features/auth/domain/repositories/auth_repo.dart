import 'package:practice_app/src/core/Either/Either.dart';
import 'package:practice_app/src/core/failure/failure.dart';


abstract class AuthRepo {

  Future<Either<Failure, String>> registration({
    required Map<String, dynamic> userInfo,
  });

  Future<Either<Failure, String>> confirmOTP({
    required Map<String, dynamic> otp,
  });

  Future<Either<Failure,String>> login({
    required Map<String,dynamic> user
  });
}