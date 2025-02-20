import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.black38),
            useMaterial3: true),
        home: MyHomePage(
          title: "title",
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  get padding => null;

  String get image => "null";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF181818), Color(0xFF6A0B0B)],
                begin: Alignment.center,
                end: Alignment.bottomCenter),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/image/main.png",
                    width: 448,
                    height: 300,
                  ),
                  Show(),
                  SizedBox(
                    height: 20,
                  ),
                  Now(),
                  SizedBox(
                    height: 20,
                  ),
                  Recom(),
                  SizedBox(
                    height: 10,
                  ),
                  Genre(),
                  SizedBox(height: 10,),
                  Poster1(),
                  SizedBox(
                    height: 15,
                  ),
                  Name1(),
                  SizedBox(
                    height: 8,
                  ),
                  Subname1(),
                  SizedBox(
                    height: 15,
                  ),
                  Poster2(),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // Name2(),SizedBox(height: 5,),
                  // Subname2()
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFF0E0E0E)),
            width: 100,
            height: 65,
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(width: 47, height: 0),
                    Image.asset("assets/image/home.png"),
                    SizedBox(width: 47, height: 0),
                    Image.asset("assets/image/web.png"),
                    SizedBox(width: 47, height: 0),
                    Image.asset("assets/image/ticket.png"),
                    SizedBox(width: 47, height: 0),
                    Image.asset("assets/image/user.png"),
                    SizedBox(width: 47, height: 0),
                  ],
                ),
              ],
            )));
  }
}

Row Show() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(width: 10),
      SizedBox(height: 10),
      Text(
        "---  NOW SHOWING ✭  -------------",
        style: TextStyle(
            color: Color(0xFFD2A046), fontSize: 24, fontFamily: "Monoton"),
      )
    ],
  );
}

Row Now() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 36,
          height: 10,
        ),
        Image.asset("assets/image/pos1.png"),
        SizedBox(
          width: 36,
          height: 10,
        ),
        Image.asset("assets/image/pos2.png"),
        SizedBox(
          width: 36,
          height: 10,
        ),
        Image.asset("assets/image/pos3.png")
      ]);
}

Row Recom() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(width: 10),
      SizedBox(height: 10),
      Text(
        "------  RECOMMEND ✭   --------------------------------",
        style: TextStyle(
            color: Color(0xFFD2A046), fontSize: 15, fontFamily: "Monoton"),
      )
    ],
  );
}

Row Poster1() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 30,
        ),
        Image.asset("assets/poster/line11.png"),
        SizedBox(
          width: 28,
        ),
        Image.asset("assets/poster/line12.png"),
        SizedBox(
          width: 28,
        ),
        Image.asset("assets/poster/line13.png"),
        SizedBox(
          width: 28,
        ),
        Image.asset("assets/poster/line14.png"),
        SizedBox(
          width: 28,
        ),
      ]);
}

Row Name1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(width: 34),
      SizedBox(height: 10),
      Text(
        "SPIRITED AWAY",
        style:
            TextStyle(color: Colors.white, fontSize: 8, fontFamily: "Aboreto"),
      ),
      SizedBox(
        width: 43,
      ),
      Text(
        "PERFECT BLUE",
        style:
            TextStyle(color: Colors.white, fontSize: 8, fontFamily: "Aboreto"),
      ),
      SizedBox(
        width: 45,
      ),
      Text(
        "EVANGELION",
        style:
            TextStyle(color: Colors.white, fontSize: 8, fontFamily: "Aboreto"),
      ),
      SizedBox(
        width: 62,
      ),
      Text(
        "FRIEREN",
        style:
            TextStyle(color: Colors.white, fontSize: 8, fontFamily: "Aboreto"),
      ),
      SizedBox(
        width: 55,
      ),
    ],
  );
}

Row Subname1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(width: 200),
      SizedBox(height: 10),
      Text(
        "neon genesis the movie",
        style:
            TextStyle(color: Colors.white, fontSize: 6, fontFamily: "Aboreto"),
      ),
      SizedBox(
        width: 25,
      ),
      Text(
        "Beyond Journey's End",
        style:
            TextStyle(color: Colors.white, fontSize: 6, fontFamily: "Aboreto"),
      ),
    ],
  );
}

Row Poster2() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 30,
        ),
        Image.asset("assets/poster/line21.png"),
        SizedBox(
          width: 28,
        ),
        Image.asset("assets/poster/line22.png"),
        SizedBox(
          width: 28,
        ),
        Image.asset("assets/poster/line23.png"),
        SizedBox(
          width: 28,
        ),
        Image.asset("assets/poster/line24.png"),
        SizedBox(
          width: 28,
        ),
      ]);
}

Row Name2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(width:20),
      SizedBox(height: 10),
      Text(
        "MY HERO",
        style:
            TextStyle(color: Colors.white, fontSize: 8, fontFamily: "Aboreto"),
      ),
      SizedBox(
        width:55,
      ),
      Text(
        "BLACK BUTLER",
        style:
            TextStyle(color: Colors.white, fontSize: 8, fontFamily: "Aboreto"),
      ),
      SizedBox(
        width: 38,
      ),
      Text(
        "CHAINSAW MAN",
        style:
            TextStyle(color: Colors.white, fontSize: 8, fontFamily: "Aboreto"),
      ),
      SizedBox(
        width: 30,
      ),
      Text(
        "THE APOTHECARY",
        style:
            TextStyle(color: Colors.white, fontSize: 8, fontFamily: "Aboreto"),
      ),SizedBox(width: 8,),
    ],
  );
}

Row Subname2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 10),
      Text(
        "ACADEMIA",
        style:
        TextStyle(color: Colors.white, fontSize: 8, fontFamily: "Aboreto"),
      ),
      SizedBox(
        width: 270,
      ),
      Text(
        "DIARIES",
        style:
        TextStyle(color: Colors.white, fontSize: 8, fontFamily: "Aboreto"),
      ),SizedBox(width: 10,),
    ],
  );
}

Row Genre() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 25,
        ),
        Image.asset("assets/image/genre1.png"),
        SizedBox(
          width: 4,
        ),
        Image.asset("assets/image/genre2.png"),
        SizedBox(
          width: 0,
        ),
        Image.asset("assets/image/genre3.png"),
        SizedBox(
          width: 19,
        ),
        Image.asset("assets/image/genre4.png"),
        SizedBox(
          width: 28,
        ),
      ]);
}

