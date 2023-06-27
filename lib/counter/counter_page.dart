import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count += 1;
    });
  }

  void _decrement() {
    setState(() {
      _count -= 1;
    });
  }

  Widget _createFloatingActionButton({
    required void Function() onPressed,
    required IconData icon,
    Color backgroundColor = Colors.blue,
    Color foregroundColor = Colors.white,
    String? heroTag,
  }) {
    return FloatingActionButton(
      onPressed: onPressed,
      heroTag: heroTag,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      child: Icon(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Text(
          _count.toString(),
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _createFloatingActionButton(
            onPressed: _increment,
            icon: Icons.add,
            heroTag: 'increment',
          ),
          const SizedBox(
            width: 20,
          ),
          _createFloatingActionButton(
            onPressed: _decrement,
            icon: Icons.remove,
            heroTag: 'decrement',
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
