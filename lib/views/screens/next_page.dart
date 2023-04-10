import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.values}) : super(key: key);

  final List<String> values;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: values.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Field ${index + 1}'),
              subtitle: Text(values[index]),
            );
          },
        ),
      ),
    );
  }
}
