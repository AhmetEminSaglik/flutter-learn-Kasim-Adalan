import 'package:dart_demo/2-flutter-design-learn/1-init-state.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class PageB extends StatefulWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Page B"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Go Back to Page")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst); //removes all pages until first page.
                  },
                  child: Text("Go Back to Home Page ")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                                  title: 'Turn Back To HomePage',
                                )));
                  },
                  child: Text("Go to Home Page")),
            ],
          ),
        ));
    ;
  }
}
