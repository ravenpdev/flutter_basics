import 'package:flutter/material.dart';

class User {
  final String name;
  final String profession;
  final String image;

  const User({
    required this.name,
    required this.profession,
    required this.image,
  });
}

const List<User> users = [
  User(name: 'raven', profession: 'Developer', image: ''),
  User(name: 'kristine', profession: 'Bank Teller', image: ''),
  User(name: 'iya', profession: 'student', image: ''),
  User(name: 'elia', profession: 'todler', image: ''),
];

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: ListView.builder(
        itemCount: users.length,
        cacheExtent: 0,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                users[index].image,
              ),
            ),
            title: Text(users[index].name),
            subtitle: Text(
              users[index].profession,
              style: const TextStyle(color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}
