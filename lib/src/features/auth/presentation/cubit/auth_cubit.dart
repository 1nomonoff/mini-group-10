import 'package:bloc/bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:practice_app/src/features/auth/domain/usecase/auth_login_usecase.dart';
import 'package:practice_app/src/features/auth/domain/usecase/auth_registration_usecase.dart';


part 'auth_state.dart';

class AuthCubit  extends Cubit<AuthState>{

  AuthRegistrationUsecase authRegistrationUsecase;
  AuthLoginUsecase authLoginUsecase;
  AuthCubit({required this.authRegistrationUsecase, required this.authLoginUsecase}): super(AuthState());

  Future<void> signUp({required String username,required String email, required password})async{
  
    emit(AuthState(status: AuthStatus.loading));

    final result = await authRegistrationUsecase.call({

      "username": username,
      "email": email,
      "password": password


    });

    if(result.isRight){
      print('Kelgan otp code ${result.right}');
      emit(AuthState(status: AuthStatus.loaded));
    }else{
      emit(AuthState(status: AuthStatus.error, errorText: result.left.message));

    }
  }

  Future<void> login ({
    required String username,
    required String password,
})async{
    emit(AuthState(status: AuthStatus.loading));

    final result = await authLoginUsecase.call({

      "username" : username,
      "password" : password,
    });

    if(result.isRight){
      emit(AuthState(status: AuthStatus.loaded));



    }else{
      emit(AuthState(status: AuthStatus.error, errorText: result.left.message));
    }

  }



  void logout() {

    final box = GetStorage();

    box.remove('access');
    box.remove('refresh');

    emit(AuthState(status: AuthStatus.initial));
  }

}