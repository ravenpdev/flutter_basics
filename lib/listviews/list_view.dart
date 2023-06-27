import 'package:flutter/material.dart';

class Course {
  final String name;
  final int tutorialCount;

  const Course({
    required this.name,
    required this.tutorialCount,
  });
}

const List<Course> courses = [
  Course(name: "C Fundamentals", tutorialCount: 10),
  Course(name: "Decision Making", tutorialCount: 30),
  Course(name: "Loops", tutorialCount: 40),
  Course(name: "Arrays", tutorialCount: 30),
  Course(name: "Strings", tutorialCount: 20),
];

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Page'),
      ),
      body: ListView(
        reverse: true,
        // itemExtent: 300,
        // prototypeItem: const SizedBox(
        //   height: 250,
        // ),
        // primary: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(16),
            height: 200,
            color: Colors.green,
            child: const Text(
              'Item 1',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(16),
            height: 200,
            color: Colors.blue,
            child: const Text(
              'Item 2',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            color: Colors.orange,
          ),
          Container(
            height: 200,
            color: Colors.purple,
          ),
          Container(
            height: 200,
            color: Colors.cyan,
          ),
        ],
      ),

      // body: SizedBox(
      //   height: 100,
      //   child: ListView(
      //     scrollDirection: Axis.horizontal,
      //     children: [
      //       Container(width: 50, color: Colors.green),
      //       Container(width: 50, color: Colors.blue),
      //       Container(width: 50, color: Colors.red),
      //       Container(width: 50, color: Colors.orange),
      //       Container(width: 50, color: Colors.purple),
      //       Container(width: 50, color: Colors.cyan),
      //     ],
      //   ),
      // ),
    );
  }
}
