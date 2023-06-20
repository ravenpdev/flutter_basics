import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
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
          color: Colors.white,
          // width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.lime,
                  child: Row(
                    children: [
                      const Expanded(
                          child: Text('My super long text is here! wazzup')),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.teal,
                  height: 100,
                  width: 100,
                  child: const Text('First'),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 100,
                  child: const Text('Second'),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                  child: const Text('Third'),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.orange,
                  height: 100,
                  width: 100,
                  child: const Text('Fourth'),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.yellow,
                  height: 100,
                  width: 100,
                  child: const Text('Fourth'),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.pink,
                  height: 100,
                  width: 100,
                  child: const Text('Fifth'),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                  child: const Text('Sixth'),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.black,
                  height: 100,
                  width: 100,
                  child: const Text('Sixth'),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.deepPurple,
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: const Text('Media Query'),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.deepPurple,
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2,
                  alignment: Alignment.center,
                  child: const Text('Media Query'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
