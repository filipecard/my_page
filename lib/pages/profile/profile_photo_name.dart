import 'package:flutter/material.dart';
import 'package:my_page/pages/profile/wapp_redirect.dart';
import '../../utils/style_page.dart';
import '../../utils/tools.dart';

Column profilePhotoAndName(context) {
  return Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      Row(
        children: [
          const SizedBox(width: 20),
          Expanded(
            child: Row(
              children: [
                const CircleAvatar(
                  maxRadius: 70,
                  backgroundImage: AssetImage(
                    "images/me.png",
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: SelectableText(
                      "Filipe Cardoso Oliveira",
                      style: baseFontStyle(
                          fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    subtitle: SelectableText(
                      "Developer",
                      style: baseFontStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                marginPage(context) < 100
                    ? const SizedBox()
                    : Expanded(child: infoContato(context)),
                const SizedBox(width: 60),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      marginPage(context) < 100 ? infoContato(context) : const SizedBox()
    ],
  );
}

Column infoContato(context) {
  String linkedinUrl = 'https://www.linkedin.com/in/filipecarolidev/';
  return Column(
    children: [
      SizedBox(
        width: 500,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WappRedirect()),
            );
          },
          child: ListTile(
            leading: Icon(Icons.phone, color: baseColorBackgroundAndFont),
            title: Text(
              '(86) 9 8134-6155',
              style: baseFontStyle(fontSize: 18),
            ),
          ),
        ),
      ),
      SizedBox(
        width: 500,
        child: TextButton(
          onPressed: () => {},
          child: ListTile(
            leading: Icon(
              Icons.email,
              color: baseColorBackgroundAndFont,
            ),
            title: Text(
              'filipecardosooliveira@hotmail.com',
              style: baseFontStyle(fontSize: 18),
            ),
          ),
        ),
      ),
      SizedBox(
        width: 500,
        child: TextButton(
          onPressed: () => requestRedirectUrl(linkedinUrl),
          child: ListTile(
            leading: Image.asset(
              "images/icon-linkedin.png",
              scale: 18,
              color: baseColorBackgroundAndFont,
            ),
            title: Text(
              'www.linkedin.com/in/filipecarolidev/',
              style: baseFontStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    ],
  );
}
