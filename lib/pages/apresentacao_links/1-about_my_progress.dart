import 'package:flutter/material.dart';
import '../../utils/style_page.dart';
import '../3-conhecimentos_gerais.dart';

class AboutMyProgress extends StatelessWidget {
  const AboutMyProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          whiteBoxContainer(conhecimentosGerais(context), context,
              top: 10, botoom: 800),
        ],
      ),
    );
  }
}
