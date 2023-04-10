import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> text = GlobalKey<FormState>();

  TextEditingController textEditingController = TextEditingController();

  int counter = 1;
  String details = "Hello";

  @override
  Widget build(BuildContext context) {
    Map map1 = {
      "$counter": details,
    };
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: InkWell(
                onTap: () {
                  print(map1);
                },
                child: Icon(Icons.apps)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: map1.entries.map((e) {
            return Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(right: 8),
              child: TextFormField(
                onChanged: (val) {
                  details = val;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Details..."),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            map1["${counter++}"] = details;
          });
        },
        backgroundColor: Colors.purple.withOpacity(0.5),
        child: Icon(
          Icons.add,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
