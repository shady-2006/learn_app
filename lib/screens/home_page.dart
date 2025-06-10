import 'package:flutter/material.dart';
import 'dart:math';
import 'numbers_page.dart';
import 'family_page.dart';
import 'colors_page.dart';

import '../main.dart';


  
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _buildCircularIcon(IconData icon, String label, BuildContext context, VoidCallback onPressed) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[300],
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(35),
            elevation: 4,
            minimumSize: const Size(100, 100),
          ),
          child: Icon(
            icon,
            size: 60,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 12),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildRandomLettersBackground() {
    return SizedBox.expand(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 15,
          childAspectRatio: 1,
        ),
        itemCount: 600,
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              String.fromCharCode(Random().nextInt(26) + 65),
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Learn English',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: Stack(
        children: [
          _buildRandomLettersBackground(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCircularIcon(
                  Icons.numbers,
                  'Numbers',
                  context,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NumbersPage()),
                    );
                  },
                ),
                const SizedBox(height: 30),
                _buildCircularIcon(
                  Icons.color_lens,
                  'Colors',
                  context,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Colors_Page()), );
                  },
                ),
                const SizedBox(height: 30),
                _buildCircularIcon(
                  Icons.family_restroom,
                  'Family',
                  context,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const family_page()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
