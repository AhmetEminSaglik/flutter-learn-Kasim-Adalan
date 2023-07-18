import 'package:flutter/material.dart';

class PageA extends StatefulWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  void deactivate() {
    super.deactivate();
    print("deactivate() method run");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose) method run");
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("LCB - PAGE A"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                      print("Clicked $counter");
                    });
                  },
                  child: Text("CLICK $counter"))
            ],
          ),
        ));
  }
}
