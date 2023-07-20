import 'dart:io';

import 'package:flutter/material.dart';

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
  var tfDate = TextEditingController();
  var tfHour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Time Picker"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: tfHour,
                decoration: InputDecoration(hintText: "Enter Hour"),
                onTap: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                  ).then((pickTime) {
                    setState(() {
                      tfHour.text = "${pickTime?.hour}:${pickTime?.minute}";
                    });
                  });
                },
              ),
              TextField(
                controller: tfDate,
                decoration: InputDecoration(hintText: "Enter Date"),
                onTap: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2050))
                      .then((pickDate) {
                    setState(() {
                      tfDate.text =
                          "${pickDate?.day}:${pickDate?.month}:${pickDate?.year}";
                    });
                  });
                },
              )
            ],
          ),
        ));
  }
}
