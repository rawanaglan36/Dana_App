import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/login_cubit.dart';

class HomeScreen extends StatelessWidget {
  int index = 0;
  List<String> names = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
    'لا اله الا الله',
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        LoginCubit cubit = BlocProvider.of(context);
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              toolbarHeight: 80,
              backgroundColor: Colors.brown.shade100,
              centerTitle: true,
              title: Text(cubit.text),
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Background.png'),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(child: Image.asset('assets/images/sebha.jpg')),
                      Column(
                        children: [
                          Text(
                            cubit.text,
                            style: TextStyle(
                              color: Colors.brown.shade100,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(cubit.counter.toString(),
                          style: TextStyle(
                            color: Colors.brown.shade100,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.brown.shade100,
                    ),
                    onPressed: () {
                      cubit.chText();
                      cubit.chText2(newText: names.single);
                    },
                    child: Icon(Icons.ac_unit),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
