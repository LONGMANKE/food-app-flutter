import 'package:flutter/material.dart';
import 'package:food_app/auth/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAT5strzevOIw0p16i1XrJlEa0hHNh62u0",
      appId: "1:196521214330:android:786d965f0ce897c9c756c3",
      messagingSenderId: "196521214330",
      projectId: "foodapp-21",
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: SignIn(),
    );
  }
}
