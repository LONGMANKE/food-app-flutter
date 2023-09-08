import 'package:flutter/material.dart';
import 'package:food_app/auth/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:food_app/screens/home/home_screen.dart';

void main() async {
  await dotenv.load();  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAT5strzevOIw0p16i1XrJlEa0hHNh62u0",
      appId: "dotenv.env['APIID']",
      messagingSenderId: "dotenv.env['SENDERID']",
      projectId: "dotenv.env['PROJECTID']",
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
      // home: HomeScreen(),
    );
  }
}
