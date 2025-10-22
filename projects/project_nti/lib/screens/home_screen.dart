import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:project_nti/screens/cart-screen.dart';
import 'package:project_nti/widgets/loadingWidgets.dart';
import 'package:project_nti/widgets/sucessWidgets.dart';

import '../core/cubit/home_cubit.dart';
import '../core/cubit/home_state.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart),
        onPressed: () {

        Navigator.push(context, MaterialPageRoute(builder: (context) {
         return CartScreen();
        },));
      },),
      // backgroundColor: Color(0xFFDABDE3),
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.pink.shade100,
        centerTitle: true,
        title: Text(
          "LAPTOP STORE",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (BuildContext context,HomeState state,) {
          if (state is HomeSuccess) {
            return ListView.builder(
              itemCount: state.lap.length,
                itemBuilder: (context, index) {
                  return Sucesswidgets(itemModel: state.lap[index]);
                },);
          }
          return Loadingwidgets();
        },

      ),
    );
  }
}
