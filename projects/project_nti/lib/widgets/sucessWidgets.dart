import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_nti/core/favorites/cubit/favorite_cubit.dart';
import 'package:project_nti/core/favorites/view/screens/favorite_screen.dart';
import 'package:project_nti/model/item_model.dart';

import '../core/cart/cubit/cart_cubit.dart';

class Sucesswidgets extends StatefulWidget {
  Sucesswidgets({super.key,
    // required this.list,
    required this.itemModel});
  // final List<ItemModel> list;
  final ItemModel itemModel ;


  @override
  State<Sucesswidgets> createState() => _SucesswidgetsState();
}

class _SucesswidgetsState extends State<Sucesswidgets> {

  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withAlpha(10), Colors.pink.shade100],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        context.read<FavoriteCubit>().addFvCubit(productId: widget.itemModel.id);
                        isSelected = !isSelected;
                        setState(() {});
                        print(widget.itemModel.id);
                        // Navigator.push(context, MaterialPageRoute(builder: (context) {
                        //   return FavoriteScreen();
                        // },));
                      },

                      icon: Icon(
                        isSelected ? Icons.favorite : Icons.favorite_border,
                        color: isSelected ? Colors.red : Colors.grey,
                      ),
                    ),
                  ),
          
                  Image.network(widget.itemModel.image),
                  Align(
                    alignment: Alignment.centerLeft,
          
                    child: Text(
                      widget.itemModel.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    widget.itemModel.description,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: [
                        Text(
                          'price : ${widget.itemModel.price.toString()}\$',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        ElevatedButton.icon(
                          onPressed: () {
                            BlocProvider.of<CartCubit>(context).addCartCubit(id: widget.itemModel.id);
                          },
                          icon: Icon(Icons.add_shopping_cart),
                          label: Text(' add to cart'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],


    );
  }
}
