part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class LiginScreen extends HomeState{}
final class SplashScreen extends HomeState{}

