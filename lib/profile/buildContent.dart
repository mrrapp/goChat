import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'NumbersWidget.dart';
import 'buildAbout.dart';
import 'buildSocialIcon.dart';

Widget buildContent() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Title(
          color: Colors.black,
          child: const Text(
            'Rapp Jeremiah',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Flutter Developer',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSocialIcon(FontAwesomeIcons.slack),
            const SizedBox(
              width: 12,
            ),
            buildSocialIcon(FontAwesomeIcons.github),
            const SizedBox(
              width: 12,
            ),
            buildSocialIcon(FontAwesomeIcons.linkedin),
            const SizedBox(
              width: 12,
            ),
            buildSocialIcon(FontAwesomeIcons.twitter),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        const NumbersWidget(),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        const SizedBox(height: 10),
        buildAbout(),
      ],
    ),
  );
}
