import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/home_cubit.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit cubit = BlocProvider.of(context);
        return SafeArea(
          child: Scaffold(
           backgroundColor: cubit.color,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(cubit.image),
                  IconButton(
                      onPressed: (){
                        cubit.chColor();
                        cubit.chImage(newImage: "assets/images/makeUpp.png");
                      },
                      icon: Center(child: Card(child: Icon(Icons.account_balance_outlined,size: 100,))))

                ],
              )
          ),
        );
      },
    );
  }
}


