import 'package:flutter/material.dart';
import 'package:my_page/pages/profile/profile_photo_name.dart';

import '../utils/style_page.dart';
import 'apresentacao/apresentacao.dart';

ListView homepage(BuildContext context) {
  return ListView(
    scrollDirection: Axis.vertical,
    children: [
      profilePhotoAndName(context),
      apresentacao(context),
      footer()
      // whiteBoxContainer(conhecimentosGerais(), top: 10, botoom: 800),
    ],
  );
}
