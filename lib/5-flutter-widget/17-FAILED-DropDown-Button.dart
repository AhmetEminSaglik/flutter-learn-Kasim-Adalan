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
  var countryList = [];
  String dropdownValue = "Turkey";

  @override
  void initState() {
    // TODO: implement initState
    // super.initState();
    countryList.add(dropdownValue);
    countryList.add("Italy");
    countryList.add("Germany");
    countryList.add("Russion");
    countryList.add("Chinese");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Title2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             /* DropdownButton(
                  value: dropdownValue,
                  items: countryList.map((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text("Country : $value"));
                  }).toList(),
                  onChanged: onChanged)*/
            ],
          ),
        ));
  }
}
