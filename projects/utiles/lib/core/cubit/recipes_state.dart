part of 'recipes_cubit.dart';

@immutable
sealed class RecipesState {}

final class RecipesInitial extends RecipesState {}
final class SucessHome extends RecipesState {
  final List<RecipesModel>recipe;
   SucessHome({required this. recipe});
}
final class LoadingHome extends RecipesState {}
