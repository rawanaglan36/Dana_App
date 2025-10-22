import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_nti/model/item_model.dart';

import '../core/cart/cubit/cart_cubit.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,

        toolbarHeight: 90,
        centerTitle: true,
        title: Text('Cart Screen',style:
          TextStyle(
            color: Colors.black54,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
      ),
      body: BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is GetAddSuccess) {
            ScaffoldMessenger.of(context,
            ).showSnackBar(SnackBar(content:Text(state.message)));
          }
        },
        builder: (context, state) {
          return BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              if (state is CartGetState) {
                return ListView.builder(itemCount: state.product.length,

                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(

                        decoration: BoxDecoration(
                        gradient: LinearGradient(
                        colors: [Colors.black.withAlpha(10), Colors.pink.shade100],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    ),
                    ),
                        child: ListTile(
                          leading: Image.network(state.product[index].image),
                          title: Text(state.product[index].name),
                          subtitle: Text("Price: ${state.product[index].price}",style:
                            TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),),
                          trailing: Text(state.product[index].status,style:
                            TextStyle(
                              color: Colors.pink,
                              fontSize: 12,
                              fontWeight: FontWeight.w500
                            ),),
                        ),
                      ),
                    );
                  },);
              }
              return CircularProgressIndicator();
            }
          );
        },
      ),
    );
  }
}
