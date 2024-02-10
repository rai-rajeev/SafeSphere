import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:safesphere/homescreen.dart';
import 'package:safesphere/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
List<String> his=[];
SharedPreferences ?pref;
void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  pref=await SharedPreferences.getInstance();
  his=pref!.getStringList('his')??[];
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          return snapshot.hasData?const Homescreen(): const LoginScreen();
        }
      ),
    );
  }
}


