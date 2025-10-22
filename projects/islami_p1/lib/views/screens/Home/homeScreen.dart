import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_p1/model/SuraModel.dart';
import 'package:islami_p1/taps/Hadeth_Tap/hadth_tap.dart';
import 'package:islami_p1/taps/Quran_Tap/quran_tap.dart';
import 'package:islami_p1/taps/Quran_Tap/sura_deatails.dart';
import 'package:islami_p1/taps/Raadio_Tap/radio_tap.dart';
import 'package:islami_p1/taps/Sebha_Tap/sebha_tap.dart';
import 'package:islami_p1/taps/Time_Tap/time_tap.dart';
import 'package:islami_p1/views/App_style/app_colors.dart';
import '../../App_style/app_assets.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';
  int selectedIndex = 0;
  int index=0;
  final bool selected = true;
  List<String> background = [
    AppAssets.Background,
    AppAssets.Hadeth_pg,
    AppAssets.Sebha_bg,
    AppAssets.Radio_pg,
    AppAssets.Time_bg,
  ];
  List<Widget> tabs = [
    QuranTap(),
    HadthTap(),
    SebhaTap(),
    RadioTap(),
    TimeTap(),
  ];
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          widget.background[widget.selectedIndex],
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
          body: widget.tabs[widget.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              widget.selectedIndex = value;
              setState(() {});
            },
            currentIndex: widget.selectedIndex,

            items: [
              BottomNavigationBarItem(
                icon: buildItemInButtonNavBar(
                  index: 0,
                  image: AppAssets.quran_navBar,
                ),
                label: 'Quran',
              ),
              BottomNavigationBarItem(
                icon: buildItemInButtonNavBar(
                  index: 1,
                  image: AppAssets.hadeth_navBar,
                ),
                label: 'Hadeth',
              ),
              BottomNavigationBarItem(
                icon: buildItemInButtonNavBar(
                  index: 2,
                  image: AppAssets.sebha_navBar,
                ),
                label: 'Sebha',
              ),
              BottomNavigationBarItem(
                icon: buildItemInButtonNavBar(
                  index: 3,
                  image: AppAssets.radio_navBar,
                ),
                label: 'Radio',
              ),
              BottomNavigationBarItem(
                icon: buildItemInButtonNavBar(
                  index: 4,
                  image: AppAssets.time_navBar,
                ),
                label: 'Time',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildItemInButtonNavBar({required int index, required String image}) {
    return widget.selectedIndex == index
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(66),
            ),
            child: ImageIcon(AssetImage(image)),
          )
        : ImageIcon(AssetImage(image));
  }
}
