import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/button_example/button_example.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Page'),
        centerTitle: true,
      ),
      body: const ButtonExample(),
    );
  }
}
