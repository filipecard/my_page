import 'package:flutter/material.dart';

import '../utils/style_page.dart';

Container apresentacao() {
  return Container(
    padding: const EdgeInsets.all(30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '''Hello, welcome to my profile. I'm Filipe, a studant of the Systems Analysis and Development course. I'm in my last year of college, if you want to see my progress during this journey: 
          ''',
          style: baseFontStyle(),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            '->> About my progress...',
            style: baseFontStyle(),
          ),
        )
      ],
    ),
  );
}
