import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Snackbar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Hello")));
                  },
                  child: Text("Default Snackbar")),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Do you want to delete?"),
                        action: SnackBarAction(
                          label: "Yes",
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Deleted")));
                          },
                        ),
                      ),
                    );
                  },
                  child: Text("Snacakbar Action")),
              ElevatedButton(
                child: Text("Customized Snacakbar Action (1 sec)"),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "No Network connection found",
                        style: TextStyle(color: Colors.pinkAccent),
                      ),
                      backgroundColor: Colors.white,
                      duration: Duration(seconds: 1),
                      action: SnackBarAction(
                        label: "TRY AGAIN",
                        textColor: Colors.blue,
                        onPressed: () {
                          print("Tried again");
                        },
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}
