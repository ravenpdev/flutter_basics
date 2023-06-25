import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/custom_button/custom_button.dart';
import 'package:flutter_basics/presentation/custom_button/gesture_button.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  void onTap() {
    print('onTap!');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.green),
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              // side: MaterialStatePropertyAll(BorderSide(width: 5)),
            ),
            onPressed: () {
              debugPrint('text button press');
            },
            child: const Text('Text Button'),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('elevated button press');
            },
            child: const Text('Elevated Button'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow),
          ),
          // nothing will happen if we click the switch button
          // since we are inside the stateless widget
          Switch(
            value: true,
            onChanged: (value) {
              print(value);
            },
          ),
          const SizedBox(height: 20),
          CustomButton(
            onTap: onTap,
            icon: Icons.home,
            iconColor: Colors.white,
          ),
          const SizedBox(height: 20),
          const GestureButton(),
        ],
      ),
    );
  }
}
