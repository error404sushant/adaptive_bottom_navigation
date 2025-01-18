import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  final List<String> searchResults = [
    'Search Result 1',
    'Search Result 2',
    'Search Result 3',
  ];

   SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(searchResults[index]),
            leading: Icon(Icons.search),
          );
        },
      ),
    );
  }
}
