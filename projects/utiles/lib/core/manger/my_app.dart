import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utiles/core/views/screens/home_screen.dart';
import 'package:utiles/core/views/screens/splash_Screen.dart';

import '../cubit/recipes_cubit.dart';

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecipesCubit()..getRecData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen()
        //HomeScreen(),
      ),
    );
  }
}