import 'dart:async';

import 'package:breakfast_flutter/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainPage())));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/st.jpg"),
          fit: BoxFit.cover),
        ),
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Text("Order Now",
          style: GoogleFonts.anton(
            letterSpacing: 2,
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.red
          )),
        ),
      ),
    );
  }
}
