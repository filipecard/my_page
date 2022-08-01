import 'package:flutter/material.dart';
import 'package:my_page/utils/style_page.dart';

import '../utils/tools.dart';

Container footer() {
  return Container(
    padding: const EdgeInsets.only(top: 10, bottom: 10, right: 100, left: 20),
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
            'by @FilipeCardoso, 2022',
            style: baseFontStyle(fontSize: 15),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    ),
  );
}
