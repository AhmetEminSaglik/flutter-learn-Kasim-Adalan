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
      home: MyHomePage(title: "Login Page Demo"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: screenHeight / 50),
                child: SizedBox(
                  width: screenWidth / 4,
                  // height: screenHeight / 6,
                  child: _LoginPageLogo(),
                ),
              ),
              _InputTextFieldPadding(
                  widget: const _UsernameInputTextField(),
                  screenInfo: screenInfo),
              _InputTextFieldPadding(
                  widget: const _PasswordInputTextField(),
                  screenInfo: screenInfo),
              _LoginButton(screenInfo: screenInfo),
              GestureDetector(
                onTap: () {
                  print("User needs Help!");
                },
                child: Padding(
                  padding: EdgeInsets.only(top: screenHeight / 25),
                  child: Text("Help?",
                      style: TextStyle(
                        fontSize: screenWidth / 25,
                        color: Colors.white,
                      )),
                ),
              ),
              /*TextButton(
                  onPressed: () {
                    print("User needs help!");
                  },

                  child: const Text("Help?")),*/
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginPageLogo extends StatelessWidget {
  const _LoginPageLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("images/logo.png");
  }
}

class _UsernameInputTextField extends StatelessWidget {
  const _UsernameInputTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _InputTextField(
      hint: "Username",
    );
  }
}

class _InputTextFieldPadding extends StatelessWidget {
  final StatelessWidget widget;
  final MediaQueryData screenInfo;
  late final double screenWidth;
  late final double screenHeight;

  _InputTextFieldPadding(
      {super.key, required this.widget, required this.screenInfo});

  @override
  Widget build(BuildContext context) {
    screenHeight = screenInfo.size.height;
    screenWidth = screenInfo.size.width;
    return Padding(
      padding: EdgeInsets.only(
          left: screenWidth / 30,
          right: screenWidth / 30,
          bottom: screenHeight / 30),
      child: widget,
    );
  }
}

class _PasswordInputTextField extends StatelessWidget {
  const _PasswordInputTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _InputTextField(hint: "Password");
  }
}

class _InputTextField extends StatelessWidget {
  final String hint;

  const _InputTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)))),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final MediaQueryData screenInfo;
  late final double _screenWidth;
  late final double _screenHeight;

  _LoginButton({super.key, required this.screenInfo});

  @override
  Widget build(BuildContext context) {
    _screenHeight = screenInfo.size.height;
    _screenWidth = screenInfo.size.width;
    return SizedBox(
      width: _screenWidth / 1.5,
      height: _screenHeight / 15,
      child: ElevatedButton(
          onPressed: () {
            print("login is successfull");
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.pink),
              foregroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.white)),
          child: Text("Login", style: TextStyle(fontSize: _screenWidth / 20))),
    );
  }
}
