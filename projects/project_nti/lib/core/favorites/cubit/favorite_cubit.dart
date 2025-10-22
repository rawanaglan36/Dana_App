import 'package:bloc/bloc.dart';


import '../data/data_favorites.dart';
import 'favorite_state.dart';



class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());
  addFvCubit({required String productId }){
    emit(FavoriteLoadingState());
    DataFav.addFavorites(productId: productId);
    emit(FavoriteAddSuccessState());
  }
  getFav()async{
    emit(FavoriteLoadingState());
    var listModel=await DataFav.getFav();
    emit(FavoriteSuccessState(list: listModel));
  }
  deleteFvCubit({required String productId })async{
    emit(FavoriteLoadingState());

   await DataFav.deleteFavorites(productId: productId);
    emit(FavoriteDeleteSuccessState());
    getFav();
  }
}
