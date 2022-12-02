// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import 'home_page.dart';
// import 'login.dart';

// class Auth extends StatelessWidget {
//   const Auth({super.key});

//   @override
//   Widget build(BuildContext context) => Scaffold(
//       body: StreamBuilder<User?>(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else if (snapshot.hasError) {
//               return const Center(
//                 child: Text('Oops! Something went wrong'),
//               );
//             } else
//             if (snapshot.hasData) {
//               return const HomePage();
//             } else {
//               return  LoginWidget();
//             }
//           }));
// }
