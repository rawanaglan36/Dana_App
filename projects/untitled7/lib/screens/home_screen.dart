import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled7/widgets/Scucess_widget.dart';

import '../core/features/cubit/character_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade100,
          toolbarHeight: 80,
          centerTitle: true,
          title: Text('Character App', style: TextStyle(
              color: Colors.teal,
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),),
        ),
        body: BlocBuilder<CharacterCubit, CharacterState>(
          builder: (context, state) {
            if(state is Scucess){
              return ListView.builder(
                itemCount: state.char.length,
                  itemBuilder: (context, index) {
                    return ScucessWidget(characterModel:state.char[index] ,);
                  },
      
              );
            }
            return CircularProgressIndicator();
      
          },
        ),
      ),
    );
  }
}
