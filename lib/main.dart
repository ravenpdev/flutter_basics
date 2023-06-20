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
        body: const DiffLayout(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Text(
                  'Drawer Header',
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DiffLayout extends StatelessWidget {
  const DiffLayout({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 600) {
      return Row(
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          const SizedBox(width: 10),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
          const SizedBox(width: 10),
          Container(
            width: 50,
            height: 50,
            color: Colors.green,
          ),
        ],
      );
    }

    return Column(children: [
      Container(
        width: 50,
        height: 50,
        color: Colors.red,
      ),
      const SizedBox(width: 10),
      Container(
        width: 50,
        height: 50,
        color: Colors.blue,
      ),
      const SizedBox(width: 10),
      Container(
        width: 50,
        height: 50,
        color: Colors.green,
      ),
    ]);
  }
}
