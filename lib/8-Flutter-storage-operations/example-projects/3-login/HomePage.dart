import '3-login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var spUsername;
  var spPassword;

  Future<void> readLoginData() async {
    var sp = await SharedPreferences.getInstance();
    setState(() {
      spUsername = sp.getString("username") ?? "no Username";
      spPassword = sp.getString("password") ?? "no Password";
    });
  }

  Future<void> logout() async {
    var sp = await SharedPreferences.getInstance();
    sp.remove("username");
    sp.remove("pasword");
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readLoginData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("HomePage"),
          actions: [
            IconButton(
              onPressed: () {
                print("click here");
                logout();
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Logout Successfuly")));
              },
              icon: Icon(Icons.exit_to_app),
            )
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Username : $spUsername ", style: TextStyle(fontSize: 30)),
                Text("Password : $spPassword ", style: TextStyle(fontSize: 30)),
              ],
            ),
          ),
        ));
  }
}
