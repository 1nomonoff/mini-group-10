

import 'package:practice_app/src/core/Either/Either.dart';
import 'package:practice_app/src/core/failure/failure.dart';
import 'package:practice_app/src/core/usecase/Usecase.dart';
import 'package:practice_app/src/features/auth/domain/repositories/auth_repo.dart';

class OtpConfirmUsecase  extends UseCase<String,Map<String,dynamic>>{

  final AuthRepo authRepo;
  OtpConfirmUsecase({
    required this.authRepo
});
  @override
  Future<Either<Failure, String>> call(Map<String, dynamic> params) {
    return authRepo.confirmOTP(otp: params);
  }
}