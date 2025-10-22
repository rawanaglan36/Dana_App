import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_p1/model/SuraModel.dart';
import 'package:islami_p1/taps/Quran_Tap/sura_content.dart';
import 'package:islami_p1/views/App_style/app_assets.dart';
import 'package:islami_p1/views/App_style/app_colors.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'SuraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty) {
      loadSuraFile(args.index);
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          args.suraEnName,
          style: TextStyle(color: AppColors.goldColor, fontSize: 25),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            AppAssets.sura_detailes_bg,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              SizedBox(height: 95),
              Text(
                args.suraArName,
                style: TextStyle(color: AppColors.goldColor, fontSize: 25),
              ),
              SizedBox(height: 30),
              Expanded(
                child: verses.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(
                          color: AppColors.goldColor,
                        ),
                      )
                    : ListView.builder(
                        itemCount: verses.length,
                        itemBuilder: (context, index) {
                          return SuraContent(content:verses[index],
                          index: index);
                          // return Text(
                          //   verses[index],
                          //   style: TextStyle(color: AppColors.goldColor),
                          // );
                        },
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void loadSuraFile(int index) async {
    String content = await rootBundle.loadString(
      'assets/files/Suras/${index + 1}.txt',
    );
    List<String> suraLines = content.split('\n');

    ///عاوزة اتاكد ان ال كونتينت ظهر
    for (int i = 0; i < suraLines.length; i++) {
      print(suraLines[i]);
    }
    verses = suraLines;
    setState(() {
      
    });
  }
}
