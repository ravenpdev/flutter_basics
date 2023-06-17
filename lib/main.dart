import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Basics'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              width: 100,
              height: 400,
              child: Image.asset(
                'assets/boy.png',
                // fit: BoxFit.fitHeight,
                // fit: BoxFit.fitWidth,
                // fit: BoxFit.fill,
                fit: BoxFit.cover,
                // fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 100,
              width: 100,
              child: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://image.dummyjson.com/100x100'),
              ),
            ),
            const Stack(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://image.dummyjson.com/100x100'),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Text('Raven Paragas'),
                ),
              ],
            ),
            Flexible(child: ClipRRect(child: Image.asset('assets/boy.png'))),
          ],
        ),
      ),
    );
  }
}
