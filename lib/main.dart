import 'package:flutter/material.dart';
import 'package:flutter_basics/screen_one/screen_one.dart';
import 'package:flutter_basics/screen_two/screen_two.dart';
import 'package:flutter_basics/shared/root_bottom_navigation/root_bottom_navigation.dart';

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
      home: const RootBottomNavigation(),
      routes: <String, WidgetBuilder>{
        "/root": (BuildContext context) => const RootBottomNavigation(),
        "/screenOne": (BuildContext context) => const ScreenOne(),
        "/screenTwo": (BuildContext context) => const ScreenTwo(),
      },
    );
  }
}
