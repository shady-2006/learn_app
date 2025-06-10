import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:learn_app/models/number_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.numbers});

  final numbersCLASS numbers;

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    return Container(
      height: 100,
      color: Colors.green,
      child: Row(
        children: [
          Image.asset(numbers.image),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                numbers.entext,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              Text(
                numbers.artext,
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
                await player.play(AssetSource(numbers.sounds));
              },
            ),
          ),
        ],
      ),
    );
  }
}