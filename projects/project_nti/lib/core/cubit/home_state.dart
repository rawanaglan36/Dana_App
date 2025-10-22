import 'package:project_nti/model/item_model.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {
  final List<ItemModel> lap;

  HomeSuccess({required this.lap});
}
