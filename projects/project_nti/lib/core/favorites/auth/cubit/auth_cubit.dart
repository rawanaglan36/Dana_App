import 'package:flutter_bloc/flutter_bloc.dart';


import '../data/auth-data.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of(context);

  AuthData authData = AuthData(email: '', name: '', nationalId: '', password: '', phone: '', gender: '');

  loginCubit({required String email, required String password}) async {
    emit(LoginLoadingState());

    var data = await authData.LoginData(email: email, password: password);
    emit(LoginSuccessState(data: data));
  }
  registerCubit ({
    required String name,
    required String phone,
    required String email,
    required String nationalId,
    required String password,
    required String gender,
  })async{
    emit (LoginLoadingState());
  var data=await  authData.RegisterData(
      name : name,
      password : password,
      phone : phone,
      email : email,
      gender : gender,
      nationalId : nationalId,
    );
    emit(RegisterSuccessState(data: data));
  }

}

