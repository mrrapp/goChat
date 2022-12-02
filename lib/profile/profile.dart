import 'package:flutter/material.dart';

import 'buildContent.dart';
import 'buildTop.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // initializaation state
  // final double coverHeight = 200;
  // final double profileHeight = 124;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize:  Size.fromHeight(50),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back')),
          )
        ],
      ),
    );
  }
}
