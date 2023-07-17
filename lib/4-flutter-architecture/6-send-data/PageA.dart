import 'package:flutter/material.dart';

import 'PageB.dart';

class PageA extends StatefulWidget {
  String name;
  int age;
  double height;
  bool single;

  PageA(
      {required this.name,
      required this.age,
      required this.height,
      required this.single});

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Page A"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageB()));
                  },
                  child: Text("Go to Page B")),
              Text("Name      : ${widget.name}"),
              Text("Age          : ${widget.age}"),
              Text("Height      : ${widget.height}"),
              Text("Is Single   : ${widget.single}"),
            ],
          ),
        ));
    ;
  }
}
