import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:utiles/core/data/recipes_data.dart';
import 'package:utiles/core/model/recipes-model.dart';

part 'recipes_state.dart';

class RecipesCubit extends Cubit<RecipesState> {
  RecipesCubit() : super(RecipesInitial());
  RecipesData data = RecipesData();
  getRecData() async {
    emit(SucessHome(recipe: await data.getData()));
  }
}
