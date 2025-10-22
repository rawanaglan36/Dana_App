part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}
final class GetAddSuccess extends CartState {
  final String message;
  GetAddSuccess({required this.message});
}
final class CartLoadingState extends CartState {}
final class CartGetState extends CartState {
  List<ItemModel>product;
  CartGetState({required this.product});

}



