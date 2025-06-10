import 'package:flutter/material.dart';
import 'package:learn_app/componants/ITEM_COLORS.dart';
import 'package:learn_app/models/color_moder.dart';



class Colors_Page extends StatelessWidget {
  const Colors_Page({super.key});
  final List<colorCLASS> Colorr = const [
    colorCLASS(
        image: 'assets/image/colors/color_black.png',
        entext: 'black ',
        artext: ' اسود',
        sounds: 'assets/sounds/numbers/number_one_sound.mp3'),

colorCLASS(
        image: 'assets/image/colors/color_brown.png',
        entext: 'brown ',
        artext: 'بني',
        sounds:'assets/sounds/numbers/number_two_sound.mp3' ),
  
colorCLASS(
        image: 'assets/image/colors/color_green.png',
        entext: 'green',
        artext: 'اخضر',
        sounds: 'assets/sounds/numbers/number_three_sound.mp3'),
 colorCLASS(
        image: 'assets/image/colors/color_gray.png',
        entext: 'gray',
        artext: 'رصاصي',
        sounds: 'assets/sounds/numbers/number_four_sound.mp3'),
       colorCLASS(
        image: 'assets/image/colors/color_red.png',
        entext: 'red',
        artext: 'احمر',
        sounds:'assets/sounds/numbers/number_five_sound.mp3' ),
        colorCLASS(
        image: 'assets/image/colors/yellow.png',
        entext: 'yellow',
        artext: 'اصفر',
        sounds:'assets/sounds/numbers/number_six_sound.mp3' ),
        colorCLASS(
        image: 'assets/image/colors/color_white.png',
        entext: 'white',
        artext: 'ابيض',
        sounds:'assets/sounds/numbers/number_seven_sound.mp3' ),
        colorCLASS(
        image: 'assets/image/colors/color_black.png',
        entext: 'black ',
        artext: ' اسود',
        sounds: 'assets/sounds/numbers/number_one_sound.mp3'),
        colorCLASS(
        image: 'assets/image/colors/color_brown.png',
        entext: 'brown ',
        artext: 'بني',
        sounds:'assets/sounds/numbers/number_two_sound.mp3' ), 
        colorCLASS(
        image: 'assets/image/family_members/family_grandmother.png',
        entext: 'grandmother',
        artext: 'الجده',
        sounds: 'assets/sounds/numbers/number_eight_sound.mp3')









  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'COLORS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        body: ListView(
          children: [
            Item(Color: Colorr [0],),
            Item(Color:Colorr[1]),
            Item(Color: Colorr[2]),
            Item(Color: Colorr[3]),
            Item(Color: Colorr[4]),
            Item(Color: Colorr[5]),
            Item(Color: Colorr[6]),
            Item(Color: Colorr[8]),
            Item(Color: Colorr[9]),
          ],
        ));
  }
}
