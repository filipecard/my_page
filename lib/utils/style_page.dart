import 'package:flutter/material.dart';
import 'package:my_page/constants.dart';
import 'package:my_page/utils/tools.dart';

Color baseColorBackgroundAndFont = const Color.fromARGB(235, 42, 48, 53);
Color fontColor = Colors.white;
Color invisibleColor() {
  return const Color.fromARGB(0, 230, 13, 13);
}

TextStyle baseFontStyle(
    {double fontSize = 18,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration decoration = TextDecoration.none}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: fontColor,
    fontFamily: 'FiraCode',
    decoration: decoration,
  );
}

WindowSize splitComponents(context) {
  var windowSize = MediaQuery.of(context).size.width;
  // print(windowSize);
  if (windowSize <= minWindowSize) {
    return WindowSize.small;
  } else if (windowSize < medWindowSize) {
    return WindowSize.medium;
  } else {
    return WindowSize.large;
  }
}

enum WindowSize { small, medium, large }

extension WindowSizeExtension on WindowSize {
  String get size {
    switch (this) {
      case WindowSize.small:
        return 'small';
      case WindowSize.medium:
        return 'medium';
      default:
        return 'large';
    }
  }
}

Container footer() {
  return Container(
    padding: const EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 20),
    child: Row(
      children: [
        TextButton(
          onPressed: () =>
              requestRedirectUrl("https://github.com/filipecard/my_page"),
          child: Text(
            "Github",
            style: baseFontStyle(
                fontSize: 15, decoration: TextDecoration.underline),
            textAlign: TextAlign.end,
          ),
        ),
        const Expanded(child: SizedBox(width: 1000)),
        Expanded(
          child: Text(
            'by Filipe Cardoso,2022',
            style: baseFontStyle(fontSize: 15),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    ),
  );
}
