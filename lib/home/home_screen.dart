import 'package:flutter/material.dart';
import 'package:flutter_basics/screen_one/screen_one.dart';
import 'package:flutter_basics/screen_two/screen_two.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Column(children: [
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenOne(),
                ),
              );
            },
            child: const Text('Screen One')),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenTwo(),
                ),
              );
            },
            child: const Text('Screen Two')),
      ]),
    );
  }
}
