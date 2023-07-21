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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var countries = [
    "Turkey",
    "Spain",
    "Germany",
    "Italy",
    "Sweden",
    "Lithuania"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Dynamic Listview"),
        ),
        body: ListView.builder(
          itemCount: countries.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print("Click item : ${countries[index]}");
              },
              child: Card(
                  child: SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(countries[index]),
                      TextButton(
                          onPressed: () {
                            print("Click item : ${countries[index]} by click 'Select Country' Button ");

                          },
                          child: Text(
                            "Select Country",
                            style: TextStyle(color: Colors.red),
                          ))
                    ],
                  ),
                ),
              )),
            );
          },
        ));
  }
}
