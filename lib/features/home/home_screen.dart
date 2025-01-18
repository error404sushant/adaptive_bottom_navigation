import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> randomData = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: randomData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(randomData[index]),
            leading: Icon(Icons.home),
          );
        },
      ),
    );
  }
}
