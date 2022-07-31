import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_page/pages/0-footer.dart';
import 'package:my_page/pages/profile/profile_photo_name.dart';
import 'package:my_page/pages/apresentacao/apresentacao.dart';
import 'package:my_page/utils/style_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filpe Profile',
      theme: ThemeData.dark(),
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
      appBar: AppBar(
          title: const Center(
              child: Text(
            "Hello, welcome to my profile",
            style: TextStyle(fontFamily: "FiraCode", fontSize: 25),
          )),
          automaticallyImplyLeading: false),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          whiteBoxContainer(profilePhotoAndName(context), context, top: 60),
          whiteBoxContainer(apresentacao(context), context, top: 10),
          whiteBoxContainer(footer(), context, top: 10, botoom: 40)
          // whiteBoxContainer(conhecimentosGerais(), top: 10, botoom: 800),
        ],
      ),
    );
  }
}
