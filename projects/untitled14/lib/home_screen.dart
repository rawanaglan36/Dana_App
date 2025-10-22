import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled14/ScreenTwo.dart';
import 'package:untitled14/model/model.dart';
import 'package:untitled14/playerName.dart';
import 'package:untitled14/screenOne.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List<Widget> taps = [Screenone(), Screentwo(), Playername()];

  @override
  Widget build(BuildContext context) {
    Player player = ModalRoute.of(context)?.settings.arguments as Player;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.purple,
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.pink.shade100,
        items: [
          BottomNavigationBarItem(
            icon: indexName(currentIndex: 0,),label: 'screenOne',
          ),
          BottomNavigationBarItem(
            icon: indexName(currentIndex: 1,),label: 'screenTwo',
          ),
          BottomNavigationBarItem(
            icon: indexName(currentIndex: 2,),label: 'playerName',
          ),
          //   icon: index == 0
          //       ? Container(
          //           decoration: BoxDecoration(
          //             color: Colors.brown,
          //             borderRadius: BorderRadius.circular(20),
          //
          //           ),
          //     child: Icon(Icons.add),
          //         )
          //       : Icon(Icons.add),
          //   label: 'screenOne',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.read_more),
          //   label: 'screenTwo',
          // ),
          // BottomNavigationBarItem(icon: Icon(Icons.place), label: 'playerName'),
        ],
      ),
      backgroundColor: Colors.white,
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Card(
      //             color: Colors.pink.shade100,
      //             child: Text(
      //               player.playerOneArgs,
      //               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      //             ),
      //           ),
      //           Card(
      //             color: Colors.pink.shade100,
      //             child: Text(
      //               player.playerTwoArgs,
      //               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      body: taps[index],
    );
   
  }
    indexName( {required int currentIndex}){
    return index==currentIndex?Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green,
      ),
      child:  Icon(Icons.add),
    )
    :
     Icon(Icons.read_more);
  }
}
