import 'package:flutter/material.dart';
import 'package:no_of_textfield/views/screens/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home:HomePage(),
    ),
  );
}
