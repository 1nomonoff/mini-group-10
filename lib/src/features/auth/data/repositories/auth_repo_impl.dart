import 'package:practice_app/src/core/Either/Either.dart';
import 'package:practice_app/src/core/failure/failure.dart';
import 'package:practice_app/src/features/auth/domain/repositories/auth_repo.dart';

import '../source/auth_data_source.dart';

class AuthRepoImpl extends AuthRepo {
  AuthDataSource authDataSource;
  AuthRepoImpl({required this.authDataSource});

  @override
  Future<Either<Failure, String>> confirmOTP({
    required Map<String, dynamic> otp,
  }) async {
    try {
      final result = await authDataSource.confirmOTP(otp: otp);
      if (result.isRight) {
        return Right("");
      } else {
        throw Exception();
      }
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> registration({
    required Map<String, dynamic> userInfo,
  }) async {
    try {
      final result = await authDataSource.registration(userInfo: userInfo);
      if (result.isRight) {
        return Right(result.right);
      } else {
        throw Exception();
      }
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> login({
    required Map<String, dynamic> user,
  }) async {
    try {
      final result = await authDataSource.login(user: user);

      if (result.isRight) {
        return Right(result.right);
      } else {
        throw Exception();
      }
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
