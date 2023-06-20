import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/home/widgets/user_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basics'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const UserInfo(name: 'User information widget'),
            const SizedBox(height: 20),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.pink,
              ),
              child: const Center(child: Text('Hello')),
            ),
          ],
        ),
      ),
    );
  }
}
