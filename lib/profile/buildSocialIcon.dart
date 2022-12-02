import 'package:flutter/material.dart';

Widget buildSocialIcon(IconData icon) => CircleAvatar(
      radius: 25,
      foregroundColor: Colors.red,
      child: Material(
        shape: const CircleBorder(),
        clipBehavior: Clip.hardEdge,
        // color: Colors.transparent,
        child: InkWell(// I noticed inwell being used for responsive icons
          onTap: () {},
          child: Center(
              child: Icon(
            icon,
            size: 32,
          )),
        ),
      ),
    );
