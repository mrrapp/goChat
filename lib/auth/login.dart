import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';

import 'package:profile_picture/main.dart';

class LoginWidget extends StatefulWidget {
  //const LoginWidget({super.key});
  //final VoidCallback onClickedSignUp;
  // const LoginWidget({
  //   // key key, required this.onClickedSignUp})
  //     : super(key: key)

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailController,
            textInputAction: TextInputAction.next,
            autofocus: true,
            decoration: const InputDecoration(
                hintText: 'user@gmail.com', labelText: 'Email'),
          ),
          const SizedBox(
            height: 4,
          ),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            textInputAction: TextInputAction.done,
            autofocus: true,
            decoration: const InputDecoration(
                hintText: 'qwerewq12.', labelText: 'Password'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.blue),
              onPressed: signIn, // calling a method called sign in
              icon: const Icon(Icons.lock_open),
              label: const Text(
                'Sign In',
                style: TextStyle(fontSize: 24),
              )),
          const SizedBox(
            height: 8,
          ),
          RichText(
              text: TextSpan(
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                  text: 'No account? ',
                  children: [
                TextSpan(
                    // recognizer: TapGestureRecognizer()
                    //   ..onTap = Widget.onClickedSignUp,
                    text: 'Sign Up',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary))
              ])),
        ],
      ),
    );
  }

  // Sign in method created
  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
