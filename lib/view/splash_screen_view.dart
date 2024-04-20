import 'dart:async';

import 'package:e_course/view/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Timer(Duration(seconds: 3), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginView()));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/ecourses.png',height: 150,),
          ),
          const SizedBox(height: 20,),
          Center(child: Text('WELCOME TO E-COURSES',style: GoogleFonts.dmSerifDisplay(
            textStyle: const TextStyle(fontSize: 24,color: Colors.grey),))),
        ],
      ),
    );
  }
}
