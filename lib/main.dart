import 'package:flutter/material.dart';
import 'package:my_page/pages/1-profile_photo_name.dart';
import 'package:my_page/utils/style_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          whiteBoxContainer(profilePhotoAndName(), top: 60),
          Container(
            color: baseColorBackgroundAndFont(),
            padding: EdgeInsets.only(
                left: marginPage(), right: marginPage(), top: 10, bottom: 800),
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white, //Color.fromRGBO(19, 111, 99, 1),
                ),
                child: Text('Hello world'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
