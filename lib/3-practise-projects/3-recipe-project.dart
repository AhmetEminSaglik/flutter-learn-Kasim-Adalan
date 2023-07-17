import 'dart:math';

import 'package:dart_demo/3-practise-projects/core/ScreenInfoClass.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: MyHomePage(title: "Recipe"),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: ScreenSize().getScreenWidth(),
                child: Image.asset("images/potato-and-meatballs.png")),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ScreenSize().getScreenWidth() / 8,
                    child: ElevatedButton(
                      onPressed: () {
                        print("User liked the recipe.");
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.orange)),
                      child: Text("Like",
                          style: TextStyle(
                              fontSize: ScreenSize().getScreenWidth() / 25)),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: ScreenSize().getScreenWidth() / 8,
                    child: ElevatedButton(
                      onPressed: () {
                        print("User makes a comment here.");
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.deepOrangeAccent)),
                      child: Text(
                        "Comment",
                        style: TextStyle(
                            fontSize: ScreenSize().getScreenWidth() / 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            RecipeText(
                title: "Kofte",
                explanation: "Izgara Uzerinde Pisirmeye Uygun",
                date: "8 Agustos",
                content:
                    "Uygun bir yoğurma kabı içerisine kıymamızı alalım. Üzerine rendelenmiş ve suyu sıkılmış soğan, küçük küçük kesilmiş sarımsak, yumurta, galeta unu, sıvı yağ, maydanoz, tuz, karabiber ve kimyonu alalım ve malzemelerimiz güzelce karışana kadar yoğuralım."
                    "Hazırladığımız harcımızın üzerini streç ile örtelim ve 30 dakika kadar buzdolabında dinlendirelim."
                    "Sürenin sonunda harcımızı dolaptan alalım, elimizle parçalar kopartarak  şekillendirelim."
                    "Ben şeklini oval yaptım ancak siz dilediğiniz gibi şekillendirebilirsiniz."
                    "Ancak burada köftelerinizin içlerinin de pişmesi için ince olmasına dikkat etmelisiniz."
                    "Şekillendirdiğimiz köftelerimizi uygun bir tabak içerisine alalım.")
          ],
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  String content;
  double fontSize;

  CustomText({required this.content, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(fontSize: fontSize),
    );
  }
}

class ScreenSize {
  double getScreenHeight() {
    return ScreenInfoFromMediaQueryData.getScreenHeight();
  }

  double getScreenWidth() {
    return ScreenInfoFromMediaQueryData.getScreenWidth();
  }
}

class RecipeText extends StatelessWidget {
  String title;
  String explanation;
  String date;
  String content;

  RecipeText(
      {super.key,
      required this.title,
      required this.explanation,
      required this.date,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(ScreenSize().getScreenHeight() / 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: ScreenSize().getScreenWidth() / 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: ScreenSize().getScreenHeight() / 70),
              child: Row(
                children: [
                  CustomText(
                      content: explanation,
                      fontSize: ScreenSize().getScreenWidth() / 23),
                  Spacer(),
                  CustomText(
                      content: date,
                      fontSize: ScreenSize().getScreenWidth() / 23),
                ],
              ),
            ),
            CustomText(content: content, fontSize: ScreenSize().getScreenWidth() / 27)
          ],
        ),
      ),
    );
  }
}
