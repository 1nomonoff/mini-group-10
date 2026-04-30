
import 'package:practice_app/src/core/failure/failure.dart';

import '../../../../core/either/either.dart';


abstract class AuthDataSource {
  //signup
  Future<Either<Failure, String>> registration({
    required Map<String, dynamic> userInfo,
  });

  //otp

  Future<Either<Failure, String>> confirmOTP({
    required Map<String, dynamic> otp,
  });

  //login

  Future<Either<Failure,String>> login({
    required Map<String,dynamic> user
  });
}