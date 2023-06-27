import 'package:flutter/material.dart';
import 'package:flutter_basics/listviews/list_view.dart';
import 'package:flutter_basics/listviews/list_view_builder.dart';
import 'package:flutter_basics/users/user_page.dart';

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
      home: const UsersPage(),
    );
  }
}
