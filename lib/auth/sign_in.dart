import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:food_app/API/google_signup.dart';
import 'package:food_app/screens/home_screen/home_screen.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/background.png')),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 400,
              width: double.infinity,
              // color: Colors.red,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Sign in to contunue'),
                    Text(
                      'MBURU VEGES',
                      // 'Vegi',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.green.shade900,
                              offset: Offset(3, 3),
                            )
                          ]),
                    ),
                    Column(
                      children: [
                        SignInButton(
                          Buttons.Apple,
                          text: "Sign in with Apple",
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.Google,
                          text: "Sign in with Google",
                          onPressed: () async {
                            // Call our class instance method
                            await GoogleSignUp().signInWithGoogle().then(
                              (value) => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            ),
                            );

                            // Our method is returning a user

                            //var newUser = GoogleSignUp().signInWithGoogle();
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'By signing in you agree to our',
                          style: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                        Text(
                          'Terms and Pricacy Policy',
                          style: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ]))
        ]),
      ),
    );
  }
}
