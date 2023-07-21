import 'package:flutter/material.dart';

//https://www.udemy.com/course/flutter-ile-uygulama-gelistirme-kursu-android-ios/learn/lecture/23728946#overview
// to delete all comment  lines --> ctrl + f -->//.* --> delete all comments
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var tfControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Alert Dialog"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Header"),
                            content: Text("content"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    print("Selected 'cancel' ");
                                  },
                                  child: Text("Cancel")),
                              TextButton(
                                  onPressed: () {
                                    print("Selected 'ok' ");
                                    Navigator.pop(context);
                                  },
                                  child: Text("Ok")),
                            ],
                          );
                        });
                  },
                  child: Text("Basic Alert")),
              ElevatedButton(
                child: Text(
                  "Customized Alert",
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Header",
                              style: TextStyle(color: Colors.white)),
                          content: SizedBox(
                            height: 80,
                            child: Column(
                              children: [
                                TextField(
                                  controller: tfControl,
                                  decoration:
                                      InputDecoration(labelText: "Data"),
                                ),
                              ],
                            ),
                          ),
                          backgroundColor: Colors.blueAccent,
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  print("Selected 'cancel' ");
                                },
                                child: Text("Cancel",
                                    style: TextStyle(color: Colors.white))),
                            TextButton(
                              child: Text("Get Data",
                                  style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                String data = tfControl.text;
                                tfControl.text = "";
                                print("Data is entered : $data");
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      });
                },
              ),
              // ElevatedButton(onPressed: () {}, child: Text("Alert")),
            ],
          ),
        ));
  }
}
