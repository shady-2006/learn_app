import 'package:flutter/material.dart';
import 'package:learn_app/componants/item_family.dart';
import 'package:learn_app/models/family_model.dart';


class family_page extends StatelessWidget {
  const family_page({super.key});
  final List<FamilyCLASS> family = const [
    FamilyCLASS(
        image: 'assets/image/family_members/family_father.png',
        entext: 'father ',
        artext: ' الاب',
        sounds: 'assets/sounds/numbers/number_one_sound.mp3'),

FamilyCLASS(
        image: 'assets/image/family_members/family_mother.png',
        entext: 'mother ',
        artext: 'الام',
        sounds:'assets/sounds/numbers/number_two_sound.mp3' ),
  
FamilyCLASS(
        image: 'assets/image/family_members/family_daughter.png',
        entext: 'daughter',
        artext: 'الابنه',
        sounds: 'assets/sounds/numbers/number_three_sound.mp3'),
 FamilyCLASS(
        image: 'assets/image/family_members/family_son.png',
        entext: 'son',
        artext: 'الابن',
        sounds: 'assets/sounds/numbers/number_four_sound.mp3'),
        FamilyCLASS(
        image: 'assets/image/family_members/family_older_brother.png',
        entext: 'brother',
        artext: 'الاخ',
        sounds:'assets/sounds/numbers/number_five_sound.mp3' ),
        FamilyCLASS(
        image: 'assets/image/family_members/family_older_sister.png',
        entext: 'sister',
        artext: 'الاخت',
        sounds:'assets/sounds/numbers/number_six_sound.mp3' ),
        FamilyCLASS(
        image: 'assets/image/family_members/family_grandfather.png',
        entext: 'grandfather',
        artext: 'الجد',
        sounds:'assets/sounds/numbers/number_seven_sound.mp3' ),
        FamilyCLASS(
        image: 'assets/image/family_members/family_grandmother.png',
        entext: 'grandmother',
        artext: 'الجده',
        sounds: 'assets/sounds/numbers/number_eight_sound.mp3'), 
        FamilyCLASS(
        image: 'assets/image/family_members/family_grandmother.png',
        entext: 'grandmother',
        artext: 'الجده',
        sounds: 'assets/sounds/numbers/number_eight_sound.mp3'),
        FamilyCLASS(
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
            'family member',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        body: ListView(
          children: [
            Item(Family: family[0]),
            Item(Family: family[1]),
            Item(Family: family[2]),
            Item(Family: family[3]),
            Item(Family: family[4]),
            Item(Family: family[5]),
            Item(Family: family[6]),
            Item(Family: family[7]),
            Item(Family: family[8]),
            Item(Family: family[9]),
          ],
        ));
  }
}
