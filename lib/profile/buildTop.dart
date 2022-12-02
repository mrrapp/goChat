import 'package:flutter/material.dart';

import 'buildCoverImage.dart';
import 'buildProfileImage.dart';

Widget buildTop() {
  final top = coverHeight - profileHeight / 2;
  final bottom = profileHeight / 2;
  return Stack(
      clipBehavior: Clip.none,
      // stack overlaps widgets
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom), child: buildCoverImage()),
        Positioned(top: top, child: buildProfileImage()),
      ]);
}

final double coverHeight = 200;
final double profileHeight = 124;
