import 'package:flutter/material.dart';
import 'next_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();
    _controllers.add(TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: InkWell(
                onTap: () {
                  // print(map1);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        values: _controllers.map((c) => c.text).toList(),
                      ),
                    ),
                  );
                },
                child: Icon(Icons.details)),
          ),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: _controllers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _controllers[index],
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter Details..."),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controllers.add(TextEditingController());
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
