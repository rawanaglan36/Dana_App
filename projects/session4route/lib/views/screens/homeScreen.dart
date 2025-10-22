import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session4route/model/xoModel.dart';
import 'package:session4route/views/widgets/boardButton.dart';

class Homescreen extends StatefulWidget {
  static const String routeName = 'home';
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> boardState = ['', '', '', '', '', '', '', '', ''];
  int playerOne=0;
  int playerTwo=0;

  @override
  Widget build(BuildContext context) {
    XoModelArgs argsrOName=ModalRoute.of(context)?.settings.arguments as XoModelArgs;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'XO Game',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                     '${argsrOName.playerOName}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                    playerTwo.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${argsrOName.playerXName}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '0',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Boardbutton(text: boardState[0], buttonClick: XoGame, index: 0),

        ],
      ),
    );
  }

  /*
  Counter:
  0 => x
  1 => o
  2 => x
  3 => o
   */
  int counter = 0;

  void XoGame(int index) {
    if (boardState[index].isNotEmpty) {
      return;
    }
    if (counter % 2 == 0) {
      ///turn x ;
      boardState[index] = 'x';

      ///update String لانه كان فاضي فوق ف ال list
    } else {
      ///turn 0;
      boardState[index] = 'o';
    }
    counter++;
    if(checkWinner('x')) {

     playerOne+=5;

    }else if(checkWinner('o')){
      playerTwo+=10;
    }
    ///يعن لما ال board يتملي ومفيش حد كسب ف فضيت ال board
    else if(counter==9){
      initBoard();
    }
    setState(() {});
  }

  ///مفروض في حد هيكسب يعني يا اها يا لا تبقي bool
  ///عاوزة اعمل fuction تمشي ع ال x,o
  bool checkWinner(String symbol) {
    ///امتي بنكسب لو ال row =متساويه
    ///colown=متساويه
    ///لو dyconal
    ///ROWS:
    // if (boardState[0] == symbol &&
    //     boardState[1] == symbol &&
    //     boardState[2] == symbol) {
    //   return true;
    // }
    // if (boardState[3] == symbol &&
    //     boardState[4] == symbol &&
    //     boardState[5] == symbol) {
    //   return true;
    // }
    // if (boardState[6] == symbol &&
    //     boardState[7] == symbol &&
    //     boardState[8] == symbol) {
    //   return true;
    // }
    ///TRASING:
    ///0=>0 1 2
    ///3=>3 4 5
    ///6=>6 7 8
    ///9=>??
    ///هخرج من ال لوب
    for(int i =0;i<9;i+=3){
      if (boardState[i] == symbol &&
          boardState[i+1] == symbol &&
          boardState[i+2] == symbol) {
        return true;
      }
    }
    ///Coulowns:
    for(int i =0;i<3;i++){
      if (boardState[i] == symbol &&
          boardState[i+3] == symbol &&
          boardState[i+6] == symbol) {
        return true;
      }

        if(boardState[0]==symbol&&
        boardState[4]==symbol&&
        boardState[8]==symbol){
          return true;
        }


        if(boardState[2]==symbol&&
            boardState[4]==symbol&&
            boardState[6]==symbol){
          return true;
        }
      }

    return false;///محدش كسب
  }
  ///
 void initBoard(){
   boardState = ['',
     '',
     '',
     '',
     '',
     '',
     '',
     '',
     ''];
   counter=0;
   setState(() {

   });
  }


}
