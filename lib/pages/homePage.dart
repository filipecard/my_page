import 'package:flutter/material.dart';
import 'package:my_page/pages/homePage/profile.dart';

import '../utils/style_page.dart';
import 'homePage/apresentacao.dart';

ListView homepage(BuildContext context) {
  return ListView(
    scrollDirection: Axis.vertical,
    children: [
      profile(context),
      apresentacao(context),
      const SizedBox(height: 100),
      footer()
      // whiteBoxContainer(conhecimentosGerais(), top: 10, botoom: 800),
    ],
  );
}
