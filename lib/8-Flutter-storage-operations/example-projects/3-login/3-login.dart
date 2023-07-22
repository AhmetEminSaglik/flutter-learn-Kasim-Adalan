import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'HomePage.dart';

//https://www.udemy.com/course/flutter-ile-uygulama-gelistirme-kursu-android-ios/learn/lecture/23728946#overview
// to delete all comment  lines --> ctrl + f -->//.* --> delete all comments
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<bool> sessionControl() async {
    var sp = await SharedPreferences.getInstance();
    String spUsername = sp.getString("username") ?? "No Username";
    String spPassword = sp.getString("password") ?? "No Username";
    if (spUsername == "admin" && spPassword == "123") {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FutureBuilder<bool>(
          future: sessionControl(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              bool navigatePermission = snapshot.data!;
              return navigatePermission ? HomePage() : LoginPage();
            } else {
              return Container();
            }
          },
        ) //LoginPage(),
        );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var tfUsername = TextEditingController();
  var tfPassword = TextEditingController();

  // var scaffoldKey = GlobalKey<ScaffoldState>(); //to show snackbar

  Future<void> loginControl() async {
    var username = tfUsername.text;
    var password = tfPassword.text;
    if (username == "admin" && password == "123") {
      var sp = await SharedPreferences.getInstance();
      sp.setString("username", username);
      sp.setString("password", password);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      // scaffoldKey.currentState.showSnackBar(1, 0.45);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login failed")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Login Page"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: tfUsername,
                  decoration: InputDecoration(hintText: "Username"),
                ),
                TextField(
                  controller: tfPassword,
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Password"),
                ),
                ElevatedButton(
                    onPressed: () {
                      loginControl();
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("login"))
              ],
            ),
          ),
        ));
  }
}
