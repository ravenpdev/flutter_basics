import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

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
        ],
      ),
    );
  }
}
