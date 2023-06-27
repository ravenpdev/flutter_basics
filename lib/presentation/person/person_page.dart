import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/person/person.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person Page'),
        centerTitle: true,
      ),
      body: const Person(
        age: 30,
        country: 'Philippines',
        job: 'unemployed',
        name: 'raven paragas',
        imageUrl:
            'https://images.dog.ceo/breeds/cotondetulear/IMG_20160830_202631573.jpg',
      ),
    );
  }
}
