import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Future<void> readData() async {
    var sp = await SharedPreferences.getInstance();
    String name = sp.getString("name") ?? "no Name";
    int age = sp.getInt("age") ?? -1;
    double height = sp.getDouble("height") ?? -1.00;
    bool isSingle = sp.getBool("isSingle") ?? false;
    List<String> friendList = sp.getStringList("friendList") ?? <String>[];

    print("Name : $name");
    print("age : $age");
    print("height : $height");
    print("isSingle : $isSingle");
    for (var tmp in friendList) {
      print("tmp : $tmp");
    }
  }

  Future<void> removeData() async {
    var sp = await SharedPreferences.getInstance();
    sp.remove("name");
    sp.remove("age");
    sp.remove("height");
    sp.remove("isSingle");
    sp.remove("friendList");
  }

  Future<void> updateData() async {
    var sp = await SharedPreferences.getInstance();
    sp.setInt("age", 100);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
    // removeData();
    updateData();
    readData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text("Page A"),
        ),
        body: Center(
          child: Column(
            children: [Text("Page A")],
          ),
        ));
    ;
  }
}
