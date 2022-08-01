import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_page/pages/footer.dart';
import '../../../utils/style_page.dart';
import '../../../utils/tools.dart';

class AboutMyProgress extends StatelessWidget {
  const AboutMyProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          whiteBoxContainer(descriptionMyProgress(), context,
              top: 10, botoom: 10),
          whiteBoxContainer(curriculoAndCertifications(context), context,
              top: 10, botoom: 10),
          whiteBoxContainer(conhecimentosGerais(context), context,
              top: 10, botoom: 10),
          whiteBoxContainer(footer(), context, top: 10, botoom: 30)
        ],
      ),
    );
  }
}

Container curriculoAndCertifications(context) {
  return Container(
    padding: const EdgeInsets.only(top: 20, bottom: 60, left: 60, right: 60),
    child: Column(
      children: [
        Text(
          "Resume and Certifications",
          style: baseFontStyle(fontWeight: FontWeight.bold, fontSize: 28),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            const SizedBox(width: 30),
            SizedBox(
              width: 200,
              child: TextButton(
                onPressed: () {
                  requestRedirectUrl(
                      'https://drive.google.com/uc?id=13xMJjXOCzqt5SBsmmo3lx8idGsPvNUiY&export=download');
                },
                child: ListTile(
                    leading: Icon(
                      Icons.download,
                      color: baseColorBackgroundAndFont,
                    ),
                    title: Text(
                      "Resume",
                      style: baseFontStyle(),
                    )),
              ),
            ),
            const SizedBox(width: 30),
            SizedBox(
              width: 250,
              child: TextButton(
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (_) =>
                        const ImageDialog(typeCertification: 'python'),
                  );
                },
                child: ListTile(
                    leading: Image.asset(
                      "images/python_icon.png",
                      scale: 15,
                      // color: baseColorBackgroundAndFont,
                    ),
                    title: Text(
                      "Python Certification",
                      style: baseFontStyle(),
                    )),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class ImageDialog extends StatelessWidget {
  const ImageDialog({super.key, required this.typeCertification});

  final String typeCertification;
  @override
  Widget build(BuildContext context) {
    String pathImage = "";
    if (typeCertification == "python") {
      pathImage = 'images/python_certification.png';
    }
    return Dialog(
      child: Image.asset(pathImage, fit: BoxFit.cover),
    );
  }
}

Container descriptionMyProgress() {
  return Container(
    padding: const EdgeInsets.only(top: 20, bottom: 60, left: 60, right: 60),
    child: Column(
      children: [
        Text(
          "My Progress",
          style: baseFontStyle(fontWeight: FontWeight.bold, fontSize: 30),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 40),
        textItemList(
          "I started at IFPI in 2019, learning the Python language, my first contact with programming. It was quite challenging at first, but I soon adapted and stood out for the affinity I had with the IT area.",
        ),
        const SizedBox(height: 20),
        textItemList(
          "Throughout the course, I had contact with some languages ​​and frameworks such as Java, Django, JavaScript, React, Postgresql. As well as OOP theories, Agile Methodologies, Clean Code.",
        ),
        const SizedBox(height: 20),
        textItemList(
          "In the meantime, I participated in a lab called LABIRAS, where I learned about game development using Godot Engine and Unreal Engine. I did some internal projects related to 'serious games', and developed teamwork skills.",
        ),
        const SizedBox(height: 20),
        textItemList(
          "With the isolation due to COVID 19, I started an internship at the company Simples Informatica and reduced the number of courses to pay at the university. In this internship I had contact with the Angula 9 framework and the Delphi language, in which I improved a lot during 9 months.",
        ),
        const SizedBox(height: 20),
        textItemList(
          "Finally, with the return of face-to-face classes, I dedicated myself to the course until this year and the last period of college. In which I improved my learning with Clean Code and got to know Flutter.",
        ),
      ],
    ),
  );
}

ListTile textItemList(String texto) {
  return ListTile(
    leading: const Icon(Icons.trip_origin),
    iconColor: baseColorBackgroundAndFont,
    title: Text(
      texto,
      style: baseFontStyle(),
    ),
  );
}

Column conhecimentosGerais(context) {
  return Column(
    children: [
      const SizedBox(height: 20),
      Text(
        "Languages and Frameworks",
        style: baseFontStyle(fontWeight: FontWeight.bold, fontSize: 28),
        textAlign: TextAlign.center,
      ),
      languageAndFrameworkResponsive(context),
      const SizedBox(height: 20),
    ],
  );
}

Widget languageAndFrameworkResponsive(context) {
  if (marginPage(context) > 100) {
    return Row(
      children: [
        Expanded(child: conhecimentosGeraisPart1()),
        Expanded(child: conhecimentosGeraisPart2())
      ],
    );
  } else {
    return Column(
      children: [conhecimentosGeraisPart1(), conhecimentosGeraisPart2()],
    );
  }
}

Row conhecimentosGeraisPart1() {
  return Row(
    children: [
      Expanded(
        child: ListTile(
          subtitle: Text(
            'Python',
            style: baseFontStyle(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          title: Image.asset('images/python_icon.png', scale: 6.5),
        ),
      ),
      Expanded(
        child: ListTile(
          subtitle: Text(
            'Html',
            style: baseFontStyle(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          title: Image.asset('images/html_icon.png', scale: 8),
        ),
      ),
      Expanded(
        child: ListTile(
          subtitle: Text(
            'Css',
            style: baseFontStyle(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          title: Image.asset('images/css_icon.jpg', scale: 8),
        ),
      ),
      Expanded(
        child: ListTile(
          subtitle: Text(
            'Java Script',
            style: baseFontStyle(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          title: Image.asset('images/javascript_icon.png', scale: 6.5),
        ),
      ),
    ],
  );
}

Row conhecimentosGeraisPart2() {
  return Row(
    children: [
      Expanded(
        child: ListTile(
          subtitle: Text(
            'Angular 9',
            style: baseFontStyle(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          title: Image.asset('images/angular9_icon.png', scale: 6),
        ),
      ),
      Expanded(
        child: ListTile(
          subtitle: Text(
            'Delphi',
            style: baseFontStyle(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          title: Image.asset('images/delphi_icon.png', scale: 6),
        ),
      ),
      Expanded(
        child: ListTile(
          subtitle: Text(
            'Flutter',
            style: baseFontStyle(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          title: Image.asset('images/flutter_icon.png', scale: 6),
        ),
      ),
      Expanded(
        child: ListTile(
          subtitle: Text(
            'Git',
            style: baseFontStyle(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          title: Image.asset('images/git_icon.png', scale: 8),
        ),
      ),
    ],
  );
}
