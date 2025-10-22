import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_bootomnavigationbar/main.dart';
import 'package:test_bootomnavigationbar/model/Xo_Args.dart';
import 'package:test_bootomnavigationbar/widgets/custom-elevetedButton.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home Screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const String routeName = 'Home Screen';
  List<String>eleveted=[
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  int playerOne=0;
  int playerTwo=0;

  @override
  Widget build(BuildContext context) {
  XoArgs args =ModalRoute.of(context)?.settings.arguments as XoArgs;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.teal,
          centerTitle: true,

          title: Text(
            "Xo Game",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 5,

            children: [
              Row(
                spacing: 30,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 180,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Text(
                        "${args.playerOne}(x)",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$playerOne',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(width: 35,),
                  Column(
                    spacing: 10,
                    children: [
                      Text(
                        "${args.playerTwo}(0)",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                      ' $playerTwo',
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
              Expanded(
                child: Row(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                   CustomElevetedbutton(text: eleveted[0],onButtonClick: onButtonXo,index: 0,),
                    CustomElevetedbutton(text:eleveted[1] ,onButtonClick: onButtonXo,index: 1,),
                    CustomElevetedbutton(text:eleveted[2] ,onButtonClick: onButtonXo,index: 2,),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomElevetedbutton(text:eleveted[3] ,onButtonClick:onButtonXo ,index: 3,),
                    CustomElevetedbutton(text: eleveted[4],onButtonClick: onButtonXo,index: 4,),
                    CustomElevetedbutton(text: eleveted[5],onButtonClick:onButtonXo ,index: 5,),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomElevetedbutton(text:eleveted[6] ,onButtonClick: onButtonXo,index: 6,),
                    CustomElevetedbutton(text: eleveted[7],onButtonClick: onButtonXo,index: 7,),
                    CustomElevetedbutton(text:eleveted[8] ,onButtonClick: onButtonXo,index: 8,),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  int counter=0;

  void onButtonXo(index){
    if(eleveted[index].isNotEmpty){ ///مكدا لو التيكست مش فاضي متغيرهوش اطلع
      return;
    }
    if(counter%2==0){
      eleveted[index]='x'; ///شبت القيمع الفاضيه يعني عملت up date
    }else{
      eleveted[index]='O';
    }
    counter++;
    if(checkWinner('x')){
           ///كده لمل اضغت عالزرار بيتغير ودا غلط طبعاه
      playerOne+=5;
      initBord();

    }else if(checkWinner('O')){
      playerTwo+=5;
      initBord();

    }else if (counter==9){ ///لما تل counter = 9 معناه ان ال bord كلها اتملت
      initBord();///هيظهر ال bord فاضيه تاني
      ///معناخ محدش كسب
    }
    setState(() {

    });

  }
  bool checkWinner(String symbol){
    ///لبدايه = 0
    ///النهايه = 8
    ///في الصف الاول كل مره +1
    ///ف العمود الاول كل مره +3
  for(int i=0;i<3;i++){
  if(eleveted[i]==symbol && eleveted[i+3]==symbol
  &&eleveted[i+6]==symbol){
  return true;
  }

  }

    if(eleveted[0]==symbol && eleveted[4]==symbol
        &&eleveted[8]==symbol){
      return true;
    }
    return false;
  }
  void initBord(){ ///بتفضي ال bord من غير ما اعمل run
    eleveted=[
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];
    counter=0;/// بتصفر ال counter


  }

  }

