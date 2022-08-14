import 'package:flutter/material.dart';
import '../../utils/style_page.dart';
import '../../utils/tools.dart';

class WappRedirect extends StatelessWidget {
  const WappRedirect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 20, bottom: 60, left: 40, right: 40),
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  child: TextButton(
                    onPressed: () =>
                        requestRedirectUrl("https://wa.me/558681346155"),
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
          const SizedBox(height: 350),
          footer()
        ],
      ),
    );
  }
}
