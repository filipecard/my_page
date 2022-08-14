import 'package:flutter/material.dart';
import 'package:my_page/pages/apresentacao/about_my_progress.dart';
import 'package:my_page/constants.dart';
import '../../utils/style_page.dart';

Container apresentacao(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          '''I'm Filipe, a studant of the Systems Analysis and Development course. I'm in my last year of college, if you want to see my progress during this journey: 
          ''',
          style: baseFontStyle(),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutMyProgress()),
            );
          },
          child: Text(
            '->> About my progress...',
            style: baseFontStyle(),
          ),
        ),
        const SizedBox(height: 150),
        Text(
          ''' About me, i have many skills and tastes, a mixed musical taste. I'm a graphic designer and i like to develop my creativity with drawings and inspirations.
          ''',
          style: baseFontStyle(),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            '->> About my tastes...',
            style: baseFontStyle(),
          ),
        ),
        const SizedBox(height: 150),
        Text(
          ''' I'm a fan of random facts and "unfunny" jokes. Ok here is a combo:

  - Did you know that a cockroach can live for weeks without its head?  
          ''',
          style: baseFontStyle(),
        ),
        Container(
          padding: const EdgeInsets.only(left: 80, bottom: 30),
          child: Image.network(
            urlBarneyExplodeMind,
          ),
        ),
        Text('Wait for it...', style: baseFontStyle()),
        const SizedBox(height: 100),
        Text(' - This is a cockroacheadless. \n', style: baseFontStyle()),
        Container(
          padding: const EdgeInsets.only(left: 80, bottom: 30),
          child: Image.network(
            urlBarneyAndTeddyFunny,
            scale: 0.75,
          ),
        ),
      ],
    ),
  );
}
