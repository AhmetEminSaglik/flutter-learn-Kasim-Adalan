import 'package:dart_demo/3-practise-projects/core/ScreenInfoClass.dart';
import 'package:flutter/material.dart';

// to delete all comment  lines --> ctrl + f -->//.* --> delete all comments
//https://www.udemy.com/course/flutter-ile-uygulama-gelistirme-kursu-android-ios/learn/lecture/23728476#overview
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
    ScreenInfoFromMediaQueryData(mediaQueryData: MediaQuery.of(context));
    // var screenInfo = MediaQuery.of(context);
    // final double screenHeight = screenInfo.size.height;
    // final double screenWidth = screenInfo.size.width;

    return const Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _LoginPageLogo(),
              _UsernameInputTextField(),
              _PasswordInputTextField(),
              _LoginButton(),
              _CustomGestureDetector(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomGestureDetector extends StatelessWidget {
  const _CustomGestureDetector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("User needs Help!");
      },
      child: Padding(
        padding: EdgeInsets.only(
            top: ScreenInfoFromMediaQueryData.getScreenHeight() / 25),
        child: Text("Help?",
            style: TextStyle(
              fontSize: ScreenInfoFromMediaQueryData.getScreenWidth() / 25,
              color: Colors.white,
            )),
      ),
    );
  }
}

class _LoginPageLogo extends StatelessWidget {
  const _LoginPageLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: ScreenInfoFromMediaQueryData.getScreenHeight() / 50),
      child: SizedBox(
        width: ScreenInfoFromMediaQueryData.getScreenWidth() / 4,
        child: Image.asset("images/logo.png"),
      ),
    );
  }
}

class _UsernameInputTextField extends StatelessWidget {
  const _UsernameInputTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _InputTextFieldPadding(
      widget: const _InputTextField(
        hint: "Username",
      ),
    );
  }
}

class _InputTextFieldPadding extends StatelessWidget {
  final StatelessWidget widget;

  // final MediaQueryData screenInfo;
  // late final double screenWidth;
  // late final double screenHeight;

  _InputTextFieldPadding({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    // screenHeight = screenInfo.size.height;
    // screenWidth = screenInfo.size.width;
    return Padding(
      padding: EdgeInsets.only(
          /*
          left: screenWidth / 30,
          right: screenWidth / 30,
          bottom: screenHeight / 30*/
          left: ScreenInfoFromMediaQueryData.getScreenWidth() / 30,
          right: ScreenInfoFromMediaQueryData.getScreenWidth() / 30,
          bottom: ScreenInfoFromMediaQueryData.getScreenWidth() / 30),
      child: widget,
    );
  }
}

class _PasswordInputTextField extends StatelessWidget {
  const _PasswordInputTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _InputTextFieldPadding(
        widget: const _InputTextField(hint: "Password"));
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
  // final MediaQueryData screenInfo;
  // late final double _screenWidth;
  // late final double _screenHeight;

  const _LoginButton({super.key /*,required this.screenInfo*/});

  @override
  Widget build(BuildContext context) {
    // _screenHeight = screenInfo.size.height;
    // _screenWidth = screenInfo.size.width;
    return SizedBox(
      width: ScreenInfoFromMediaQueryData.getScreenWidth() / 1.5,
      height: ScreenInfoFromMediaQueryData.getScreenHeight() / 15,
      child: ElevatedButton(
          onPressed: () {
            print("login is successfull");
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.pink),
              foregroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.white)),
          child: Text("Login",
              style: TextStyle(
                  fontSize:
                      ScreenInfoFromMediaQueryData.getScreenWidth() / 20))),
    );
  }
}
