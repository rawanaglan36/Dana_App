import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  String image= ("assets/images/g.png");
   Color color = Colors.brown;
   chColor(){
     color=Colors.teal;
     emit(LiginScreen());
   }

  chImage({required String newImage}){
     image = newImage;
     emit(SplashScreen());
   }
}
