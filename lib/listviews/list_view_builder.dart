import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  const ListViewBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListViewBuilder Page'),
      ),
      body: ListView.builder(
        cacheExtent: 0,
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return _getITem(index);
        },
      ),
    );
  }

  Widget _getITem(int index) {
    print('getItem called $index');

    return Container(
      margin: const EdgeInsets.all(16),
      alignment: Alignment.center,
      height: 200,
      color: Colors.cyanAccent,
      child: Text(
        'Item $index',
        style: const TextStyle(fontSize: 26),
      ),
    );
  }
}
