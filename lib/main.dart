import 'package:flutter/material.dart';
import 'package:no_of_textfield/views/screens/homepage.dart';
import 'package:no_of_textfield/views/screens/next_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/':(context)=>HomePage(),
        'next_page':(context)=>NextPage(),
      },
    ),
  );
}
