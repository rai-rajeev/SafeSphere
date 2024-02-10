import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Future.delayed(const Duration(seconds: 1, milliseconds: 100), () {
    //   Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => StreamBuilder(
    //               stream: FirebaseAuth.instance.authStateChanges(),
    //               builder: (context, snapshot) {
    //                 //debugPrint('${snapshot.hasData}');
    //                 return (snapshot.hasData)
    //                     ? const HomeScreen()
    //                     : const LoginScreen();
    //               })));
    // });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Text("Hello",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),).animate()
            .fadeIn(duration: 1200.ms)
            .then(delay: 800.ms) // baseline=800ms
            .slide()// runs after the above w/new duration
      )
    );
  }
}
