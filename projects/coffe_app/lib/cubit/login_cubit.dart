import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
List<String>names=[
  'سبحان الله',
  'الحمد لله',
  'الله اكبر',
  'لا اله الا الله',
];
  LoginCubit() : super(LoginInitial());
  String text = "سبحان الله";
  int counter = 0;
  int index=0;
  Color color = Colors.brown;
  chText(){
counter++;
if(counter==33){
  counter=0;
 index = (index+1)%names.length;
 text=names[index];
}
    color = Colors.black;
   emit(varText());
  }
  chText2({required String newText}){
    text = newText;
    emit(changeText());
  }
}


