part of 'otp_cubit.dart';

class OtpState {
  OtpStatus status;
  String errorText;
  OtpState({
    this.status= OtpStatus.initial,
    this.errorText="",
  });

}

enum OtpStatus{initial, loading, error, loaded}