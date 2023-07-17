import 'package:flutter/material.dart';

import 'PageB.dart';
import 'Person.dart';

class PageA extends StatefulWidget {
  Person person;

  PageA({required this.person});

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
              Text("Name      : ${widget.person.name}"),
              Text("Age          : ${widget.person.age}"),
              Text("Height      : ${widget.person.height}"),
              Text("Is Single   : ${widget.person.single}"),
            ],
          ),
        ));
    ;
  }
}
