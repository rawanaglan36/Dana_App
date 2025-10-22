
import 'package:project_nti/model/item_model.dart';

sealed class FavoriteState {}

final class FavoriteInitial extends FavoriteState {}
final class FavoriteLoadingState extends FavoriteState {}
final class FavoriteAddSuccessState extends FavoriteState {}
final class FavoriteSuccessState extends FavoriteState {
  final List<ItemModel>list;
  FavoriteSuccessState({required this.list});
}
final class FavoriteDeleteSuccessState extends FavoriteState {}

