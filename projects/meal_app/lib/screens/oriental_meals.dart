import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/widget/details_screen.dart';
import '../data.dart';
import '../model/Meal_item.dart';

class OrientalMeals extends StatefulWidget {
  @override
  State<OrientalMeals> createState() => _OrientalMealsState();
}

class _OrientalMealsState extends State<OrientalMeals> {
  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final String id = data['id'];
    List<MealsItem> filteredMeals = meals.where((meal) {
      return meal.categoryNumber.contains(id);
    }).toList();

    final String name = data['name'];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.maybePop(context);
            setState(() {});
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        toolbarHeight: 80,
        backgroundColor: Colors.teal[900],
        title: Text(
          '${data['name']}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: filteredMeals.isEmpty
          ? Center(
              child: Text(
                "No Meal",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : ListView.builder(
              itemCount: filteredMeals.length,
              itemBuilder: (context, index) {
                return DetailsScreen(title: filteredMeals[index].title,
                    id: filteredMeals[index].id, image: filteredMeals[index].imageUrl);
              },
            ),
    );
  }
}
