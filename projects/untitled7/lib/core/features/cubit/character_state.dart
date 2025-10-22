part of 'character_cubit.dart';

@immutable
sealed class CharacterState {}

final class CharacterInitial extends CharacterState {}
final class Scucess extends CharacterState {
  final List<CharacterModel>char;
  Scucess({required this.char}) ;
}
