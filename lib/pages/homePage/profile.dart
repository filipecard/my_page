import 'package:flutter/material.dart';
import 'package:my_page/pages/profile/wapp_redirect.dart';
import '../../utils/style_page.dart';
import '../../utils/tools.dart';

Column profile(context) {
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
                splitComponents(context) == WindowSize.large
                    ? Expanded(child: infoContato(context))
                    : const SizedBox(),
                const SizedBox(width: 60),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      splitComponents(context) == WindowSize.large
          ? const SizedBox()
          : infoContato(context)
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
            leading: Icon(Icons.phone, color: fontColor),
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
              color: fontColor,
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
              color: fontColor,
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
