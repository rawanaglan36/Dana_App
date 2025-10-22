
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utiles/core/views/widgets/sucess_widets.dart';

import '../../cubit/recipes_cubit.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/recipesApp.png"),
              Text('Recipes App',style: TextStyle(
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),)
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          
          backgroundColor: Colors.grey.shade50,
          centerTitle: true,
          title: Text('Recipes App',
            style: TextStyle(
                color: Colors.red,
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
        ),
        body: BlocBuilder<RecipesCubit, RecipesState>(
          builder: (context, state) {
           if(state is SucessHome){
             return GridView.builder(shrinkWrap: true,
               physics: ScrollPhysics(),



               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 4,
               mainAxisSpacing: 4),
               itemCount:state.recipe.length ,
                 itemBuilder: (context, index) {
                   return SucessWidets(recipesModel: state.recipe[index]);
                 },);
           }
           return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
