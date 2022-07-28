import 'package:flutter/material.dart';
import 'package:my_page/utils/style_page.dart';

Container footer() {
  return Container(
    padding: const EdgeInsets.only(top: 10, bottom: 10, right: 100),
    child: Text(
      'by @FilipeCardoso, 2022',
      style: baseFontStyle(fontSize: 15),
      textAlign: TextAlign.end,
    ),
  );
}
