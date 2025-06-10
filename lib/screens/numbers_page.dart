import 'package:flutter/material.dart';
import 'package:learn_app/componants/item.dart';
import 'package:learn_app/models/number_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<numbersCLASS> Numbers = const [
    numbersCLASS(
        image: 'assets/image/numbers/number_one.png',
        entext: 'one',
        artext: 'واحد',
        sounds: 'assets/sounds/numbers/number_one_sound.mp3'),

numbersCLASS(
        image: 'assets/image/numbers/number_two.png',
        entext: 'Two',
        artext: 'اثنين',
        sounds:'assets/sounds/numbers/number_two_sound.mp3' ),
  
numbersCLASS(
        image: 'assets/image/numbers/number_three.png',
        entext: 'Three',
        artext: 'ثلاثه',
        sounds: 'assets/sounds/numbers/number_three_sound.mp3'),
  numbersCLASS(
        image: 'assets/image/numbers/number_four.png',
        entext: 'Four',
        artext: 'اربعه',
        sounds: 'assets/sounds/numbers/number_four_sound.mp3'),
        numbersCLASS(
        image: 'assets/image/numbers/number_five.png',
        entext: 'Five',
        artext: 'خمسه',
        sounds:'assets/sounds/numbers/number_five_sound.mp3' ),
        numbersCLASS(
        image: 'assets/image/numbers/number_six.png',
        entext: 'Six',
        artext: 'سته',
        sounds:'assets/sounds/numbers/number_six_sound.mp3' ),
        numbersCLASS(
        image: 'assets/image/numbers/number_seven.png',
        entext: 'Seven',
        artext: 'سبعة',
        sounds:'assets/sounds/numbers/number_seven_sound.mp3' ),
        numbersCLASS(
        image: 'assets/image/numbers/number_eight.png',
        entext: 'Eight',
        artext: 'ثمانية',
        sounds: 'assets/sounds/numbers/number_eight_sound.mp3'),
        numbersCLASS(
        image: 'assets/image/numbers/number_nine.png',
        entext: 'Nine',
        artext: 'تسعه',
        sounds:'assets/sounds/numbers/number_nine_sound.mp3' ),
        numbersCLASS(
        image: 'assets/image/numbers/number_ten.png',
        entext: 'Ten',
        artext: 'عشره ',
        sounds:'assets\sounds\numbers\number_ten_sound.mp3' )
        









  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Numbers',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        body: ListView(
          children: [
            Item(numbers: Numbers [0]),
            Item(numbers: Numbers [1]),
            Item(numbers:  Numbers [2]),
            Item(numbers:  Numbers [3]),
            Item(numbers:  Numbers [4]),
            Item(numbers:  Numbers [5]),
            Item(numbers:  Numbers [6]),
            Item(numbers:  Numbers [7]),
            Item(numbers:  Numbers [8]),
            Item(numbers:  Numbers [9]),
            
          ],
        ));
  }
}
