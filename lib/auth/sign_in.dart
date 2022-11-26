// // import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// // import 'package:flutter_signin_button/button_view.dart';
// // import 'package:flutter_signin_button/flutter_signin_button.dart';
// // import 'package:food_app/providers/user_provider.dart';
// // import 'package:food_app/screens/home/home_screen.dart';
// // import 'package:google_sign_in/google_sign_in.dart';
// // import 'package:provider/provider.dart';
class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/background.png')),
        )
       )

    );
  }
}
