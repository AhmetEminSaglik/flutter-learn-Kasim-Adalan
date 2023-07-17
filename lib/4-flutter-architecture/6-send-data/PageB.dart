import 'package:flutter/material.dart';

import 'HomePage.dart';

class PageB extends StatefulWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  Future<bool> goBackKey(BuildContext context) async {
    print("Go Back Key is clicked");
    Navigator.of(context).popUntil((route) =>route.isFirst); //removes all pages until first page.
    // return false; //do not go back
    return true; // goes back.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              print("Appbar goBack key is clicked.");
              // Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage(title: "icon Button to HomePage ")));
              // Navigator.pop(context);
              // Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
          title: Text("Page B- iconlu"),
        ),
        body: WillPopScope(
          //
          onWillPop: () => goBackKey(context),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Go Back to Page")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).popUntil((route) =>
                          route.isFirst); //removes all pages until first page.
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
          ),
        ));
    ;
  }
}
