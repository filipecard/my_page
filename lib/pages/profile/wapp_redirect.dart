import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/style_page.dart';

class WappRedirect extends StatelessWidget {
  const WappRedirect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          whiteBoxContainer(
            Container(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 60, left: 40, right: 40),
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: TextButton(
                      onPressed: () => _launchUrl("https://wa.me/558681346155"),
                      child: ListTile(
                        leading: Image.asset(
                          "images/whatsapp_icon.png",
                          scale: 18,
                          color: baseColorBackgroundAndFont,
                        ),
                        title: Text(
                          "Redirect to app",
                          style: baseFontStyle(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text("Or", style: baseFontStyle()),
                  const SizedBox(height: 30),
                  Image.asset(
                    "images/wapp_qrcode.png",
                    scale: 1.5,
                  ),
                  const SizedBox(height: 10),
                  Text("Use app scanner", style: baseFontStyle()),
                ],
              ),
            ),
            context,
            top: 10,
            botoom: 800,
          ),
        ],
      ),
    );
  }
}

Future<void> _launchUrl(String url) async {
  Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $url';
  }
}
