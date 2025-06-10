import 'package:flutter/material.dart';
import 'dart:math';

import 'package:learn_app/screens/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class RandomLettersBackground extends StatelessWidget {
  const RandomLettersBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 10,
        childAspectRatio: 1,
      ),
      itemCount: 100,
      itemBuilder: (context, index) {
        return Center(
          child: Text(
            String.fromCharCode(Random().nextInt(26) + 65),
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}

