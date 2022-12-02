import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'auth/auth.dart';
import 'pages/main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyB4KWk7YSrLRmuxuaGX6Qf2JOIngcKvPxc",
    appId: "1:178383008654:android:75ad2c76199409fd1beadf",
    messagingSenderId: "178383008654",
    projectId: "fir-app-three",
  ));
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // navigatorKey: navigatorKey,
      //theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      //navigatorKey: navigatorKey,
    );
  }
}
