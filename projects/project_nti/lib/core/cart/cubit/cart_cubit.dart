import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project_nti/core/cart/data/cartData.dart';

import '../../../model/item_model.dart';
import 'cart_cubit.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  CartData cartData =CartData();
  addCartCubit({required String id})async{


    emit(await CartLoadingState());
    await cartData.addData(id:id);
    getCartCubit() ;
  }
  getCartCubit()async{
    emit(CartLoadingState());
    var product=await cartData.getData();
    emit(CartGetState(product: product));
  }
}
