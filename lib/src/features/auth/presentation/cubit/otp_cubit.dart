import 'package:bloc/bloc.dart';
import 'package:practice_app/src/features/auth/domain/usecase/otp_confirm_usecase.dart';


part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState>{

  OtpConfirmUsecase otpConfirmUsecase;
  OtpCubit({required this.otpConfirmUsecase}): super(OtpState());
  Future<void> confirmOtp({required String email, required String code

})async{
    emit(OtpState(status: OtpStatus.loading));

    final result = await otpConfirmUsecase.call(
       {
         "email": email,
         "code": code});

    if(result.isRight){
      emit(OtpState(status: OtpStatus.loaded));
    }else{
      emit(OtpState(status: OtpStatus.error,errorText: result.left.message));

    }
}
}