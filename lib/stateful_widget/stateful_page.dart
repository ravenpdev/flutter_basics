import 'package:flutter/material.dart';

class StatefulPage extends StatelessWidget {
  const StatefulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Page'),
      ),
      body: const Center(
        child: SwitchButtonExample(),
      ),
    );
  }
}

class SwitchButtonExample extends StatefulWidget {
  const SwitchButtonExample({super.key});

  @override
  State<SwitchButtonExample> createState() => _SwitchButtonExampleState();
}

class _SwitchButtonExampleState extends State<SwitchButtonExample> {
  bool _switchValue = false;

  void _toggleSwitch(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _switchValue,
      onChanged: (value) => _toggleSwitch(value),
    );
  }
}
