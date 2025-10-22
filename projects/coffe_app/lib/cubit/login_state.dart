part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class varText extends LoginState {}
final class changeText extends LoginState {}
