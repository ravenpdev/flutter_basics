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
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: Colors.white70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Flexible(
                    child: Text(
                      "max steffen - Freelancer for flutter - living in germany - how are you?",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.orange,
                ),
                child: const Text('Raven D. Paragas'),
              ),
              Container(
                color: Colors.deepPurple,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Hello World'),
                      Text('Hi'),
                      Text('There!'),
                    ],
                  ),
                ),
              ),
              // Expanded(
              //   child: Container(
              //     color: Colors.red,
              //   ),
              // ),
              const Text('After Expanded'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
