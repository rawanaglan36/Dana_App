import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$x',style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),),
            ElevatedButton(onPressed: (){

              setState(() {
                x++;
              });
            },
                child: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}

