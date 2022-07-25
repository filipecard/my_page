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
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        color: Color.fromRGBO(19, 111, 99, 1),
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(
                left: 300, right: 300, top: 40, bottom: 600),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 26, 133, 125),
                            spreadRadius: 3),
                      ],
                      color: Color.fromARGB(
                          235, 255, 255, 255), //Color.fromRGBO(19, 111, 99, 1),
                    ),
                    child: profilePhotoAndName(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Column profilePhotoAndName() {
  return Column(
    children: const [
      SizedBox(
        height: 20,
      ),
      CircleAvatar(
        radius: 100.0,
        backgroundImage: NetworkImage('images/png-me.png'),
      ),
      Expanded(
        child: Material(
          color: Color.fromARGB(0, 230, 13, 13),
          child: ListTile(
            title: Text(
              "Filipe Cardoso Oliveira",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(186, 8, 53, 47),
              ),
            ),
            subtitle: Text(
              "Programador fullstack",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(186, 8, 53, 47),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
