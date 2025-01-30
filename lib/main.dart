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
        // child: Center(
        //   child: Container(
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(6), color: Color(0xFF0E0E0E)),
        //     width: 200,
        //     height: 100,
        //     padding: const EdgeInsets.all(8),
        //     child: Column(
        //       mainAxisAlignment:MainAxisAlignment.end,
        //       mainAxisSize: MainAxisSize.min,
        //       children: [
        //         const SizedBox(height: 4),
        //       ],
        //     ),
        //   ),
        // ),
      ),
        bottomNavigationBar:  Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Color(0xFF0E0E0E)),
          width: 100,
          height: 65,
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 4),
            ],
          ),
        )
    );
  }
}
