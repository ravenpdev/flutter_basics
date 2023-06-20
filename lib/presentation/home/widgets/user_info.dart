import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(name)),
        const SizedBox(width: 10),
        Container(
          height: 50,
          width: 50,
          color: Colors.red,
        ),
        const SizedBox(width: 10),
        Container(
          height: 50,
          width: 50,
          color: Colors.green,
        ),
      ],
    );
  }
}
