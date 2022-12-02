// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:profile_picture/profile/profile.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ));
                },
                child: Icon(Icons.verified_user)),
          ),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Signed In as: ${user.email!}'),
          MaterialButton(
            color: Colors.deepPurple,
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            textColor: Colors.white,
            child: Text('Sign Out'),
          )
        ],
      )),
    );
  }
}
