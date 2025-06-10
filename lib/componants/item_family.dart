import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:learn_app/models/family_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.Family});

  final FamilyCLASS Family;

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer(); // إنشاء مشغّل صوت

    return Container(
      height: 100,
      color: Colors.green,
      child: Row(
        children: [
          Image.asset(Family .image),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Family.entext,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              Text(
                Family.artext,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: const Icon(Icons.play_arrow),
              onPressed: () async {
                await player.play(AssetSource(Family.sounds));
              },
            ),
          ),
        ],
      ),
    );
  }
}