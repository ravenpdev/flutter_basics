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
            Builder(builder: (context) {
              return Container(
                color: Colors.green,
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: const Center(
                  child: Text('MediaQuery Inside Builder'),
                ),
              );
            }),
            const SizedBox(height: 20),
            LayoutBuilder(builder: (context, constraints) {
              return Container(
                color: Colors.blue,
                width: 200,
                height: 200,
                child: const Center(
                  child: Text('MediaQuery Inside Builder'),
                ),
              );
            }),
            const SizedBox(height: 20),
            Container(
              width: 300,
              height: 300,
              color: Colors.yellow,
              child: LayoutBuilder(builder: (context, constraint) {
                // constraint contains data of the Container parent
                // constraint.maxWidth is the width of the parent Container
                return Center(
                  child: Container(
                    color: Colors.deepPurple,
                    width: constraint.maxWidth / 2,
                    height: constraint.maxHeight / 2,
                    child: const Center(
                      child: Text('Layout Builder'),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
