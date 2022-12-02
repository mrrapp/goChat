// import 'dart:ui';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:profile_picture/profile/profile.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final user = FirebaseAuth.instance.currentUser!;
//     return Scaffold(
//       appBar: AppBar(title: const Text('Home')),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             color: Colors.grey[400],
//             width: double.infinity,
//             height: 200,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [const Text('Signed In as '), Text(user.email!)],
//             ),
//           ),
//           InkWell(
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const Profile(),
//                     ));
//               },
//               hoverColor: Colors.red,
//               child: Row(
//                 children: const [
//                   Text(
//                     'Profile',
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//                   ),
//                   CircleAvatar(),
//                 ],
//               )),
//           const SizedBox(
//             height: 8,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24.0),
//             child: ElevatedButton.icon(
//                 style: ElevatedButton.styleFrom(
//                     minimumSize: const Size.fromHeight(50)),
//                 onPressed: () => FirebaseAuth.instance.signOut(),
//                 icon: const Icon(Icons.door_front_door_outlined),
//                 label: const Text(
//                   'Sign Out',
//                   style: TextStyle(fontSize: 24),
//                 )),
//           )
//         ],
//       ),
//     );
//   }
// }
