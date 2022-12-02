import 'package:flutter/material.dart';
import 'profile.dart';

Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        // child: Image.network('src') ::: for image.network to work, it has to be a child function
        backgroundImage: const NetworkImage(
          'https://scontent.fabv3-2.fna.fbcdn.net/v/t39.30808-6/313978146_449736040620973_1250275503904282375_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH3nrWyfhCIT6D_2gISzDLxsOP64a2Rux-w4_rhrZG7H0dR_BHo7xgjJx_arGsbcouw8jNnGMI86AgIAVxJar1Y&_nc_ohc=ZJ7WSCf8MIEAX8shmDn&_nc_zt=23&_nc_ht=scontent.fabv3-2.fna&oh=00_AfAa8XEB6ITFa_AuMpObUt6280gMjYnY4_WYlaw0HtsJCg&oe=63866802',
        ), // image.network does not work with circle avatar
      );
        final double coverHeight = 200;
  final double profileHeight = 124;