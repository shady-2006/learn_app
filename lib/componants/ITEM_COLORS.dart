import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:learn_app/models/color_moder.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.Color});

  final colorCLASS Color;

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer(); // إنشاء مشغّل صوت

    return Container(
      height: 100,
      color: Colors.green,
      child: Row(
        children: [
          Image.asset(Color.image),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Color.entext,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              Text(
                Color.artext,
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
                await player.play(AssetSource(Color.sounds));
              },
            ),
          ),
        ],
      ),
    );
  }
}