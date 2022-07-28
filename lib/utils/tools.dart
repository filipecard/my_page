import 'package:flutter/material.dart';
import 'package:my_page/utils/style_page.dart';

import '../main.dart';

Expanded buttonBackwardHomePage(context) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.only(left: 30, right: 1800, top: 30),
      width: 30,
      height: 90,
      color: baseColorBackgroundAndFont,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
          child: Icon(
            Icons.keyboard_arrow_left,
            size: 50,
            color: baseColorBackgroundAndFont,
          ),
        ),
      ),
    ),
  );
}
