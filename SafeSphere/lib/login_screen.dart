import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:safesphere/homescreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius:
            const BorderRadius.vertical(top: Radius.circular(30))),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(
                height: 40,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Lottie.asset('assets/signin.json',
                        repeat: true),
                  ),

                  Column(
                    children: [
                      Text('Welcome to ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      Image(image: AssetImage('assets/SafeSphere.png',),fit: BoxFit.cover,),

                    ],
                  ),

                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        (loading)?const CircularProgressIndicator():ElevatedButton.icon(
                          icon: Image.asset(
                            'assets/google.jpg',
                            width: 32,
                            height: 32,
                          ),
                          label: const Text(
                            'Sign in with Google',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () async {
                            setState(() {
                              loading = true;
                            });
                            try {
                              GoogleSignInAccount? googleUser = await GoogleSignIn()
                                  .signIn();
                              GoogleSignInAuthentication? googleAuth = await googleUser
                                  ?.authentication;
                              AuthCredential credential = GoogleAuthProvider
                                  .credential(
                                  accessToken: googleAuth?.accessToken,
                                  idToken: googleAuth?.idToken
                              );
                              UserCredential usercreden = await FirebaseAuth
                                  .instance.signInWithCredential(
                                  credential);
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                            }on FirebaseAuthException catch (e) {
                              setState(() {
                                loading = false;
                              });
                              showDialog(
                                  context: (context),
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text('${e.message}'),
                                      actions: [
                                        Builder(builder: (context) {
                                          return ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context,
                                                    rootNavigator: true)
                                                    .pop();
                                              },
                                              child: const Text('OK'));
                                        })
                                      ],
                                    );
                                  });
                            } on FirebaseException catch (e) {
                              setState(() {
                                loading = false;
                              });
                              showDialog(
                                  context: (context),
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text('${e.message}'),
                                      actions: [
                                        Builder(builder: (context) {
                                          return ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context,
                                                    rootNavigator: true)
                                                    .pop();
                                              },
                                              child: const Text('OK'));
                                        })
                                      ],
                                    );
                                  });
                            } catch (e) {
                              setState(() {
                                loading = false;
                              });
                              showDialog(
                                  context: (context),
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text('$e'),
                                      actions: [
                                        Builder(builder: (context) {
                                          return ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context,
                                                    rootNavigator: true)
                                                    .pop();
                                              },
                                              child: const Text('OK'));
                                        })
                                      ],
                                    );
                                  });
                            }



                            setState(() {
                              loading = false;
                            });
                          },
                        ),

                      ]),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}