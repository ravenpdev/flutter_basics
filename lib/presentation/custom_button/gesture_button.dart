import 'package:flutter/material.dart';

class GestureButton extends StatelessWidget {
  const GestureButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('gesture button is tapped!'),
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.blue, Colors.orange],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: const Center(child: Text('click')),
      ),
    );
  }
}
