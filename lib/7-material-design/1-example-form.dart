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
  var formKey = GlobalKey<FormState>();
  var tfUserName = TextEditingController();
  var tfPassword = TextEditingController();

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
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: tfUserName,
                        decoration: InputDecoration(hintText: "Username"),
                        validator: (tfData) {
                          if (tfData!.isEmpty) {
                            return "Please enter Username";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: tfPassword,
                        obscureText: true,
                        // maxLength: 5,
                        decoration: InputDecoration(hintText: "Password"),
                        validator: (tfData) {
                          if (tfData!.isEmpty) {
                            return "Please enter Password";
                          }
                          if (tfData.length < 6) {
                            return "Password must be 6 digit";
                          }
                          return null;
                        },
                      ),
                      ElevatedButton(
                          onPressed: () {
                            bool controlResult =
                                formKey.currentState!.validate();
                            if (controlResult) {
                              String username = tfUserName.text;
                              String pass = tfPassword.text;
                              print("Username : $username, Password : $pass");
                            }
                          },
                          child: Text("Login"))
                    ],
                  ))
            ],
          ),
        ));
  }
}
