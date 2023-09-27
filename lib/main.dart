import 'package:flutter/material.dart';
import 'package:food_app/auth/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/providers/product_provider.dart';
import 'package:provider/provider.dart';
// import 'package:food_app/screens/home/home_screen.dart';

void main() async {
  await dotenv.load();  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey:"AIzaSyDw5CGTP7lL9Jc4o_Nt_W2IpzGvXUZUieA",
      //API key using .env not working 
      // apiKey: "dotenv['APIKEY']",
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
    return ChangeNotifierProvider<ProductProvider>(
      create:(context) => ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: scaffoldBackgroundColor,
        ),
        home: SignIn(),
        // home: HomeScreen(),
      ),
    );
  }
}
