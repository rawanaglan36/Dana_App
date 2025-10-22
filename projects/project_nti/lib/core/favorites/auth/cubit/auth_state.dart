sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class LoginSuccessState extends AuthState {
  final Map<String, dynamic> data;
  LoginSuccessState({required this.data});
}

final class LoginLoadingState extends AuthState {}
final class RegisterSuccessState extends AuthState {
  Map<String,dynamic>data;
  RegisterSuccessState({required this.data});
}
