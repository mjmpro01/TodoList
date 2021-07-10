import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/screens/screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: SingleChildScrollView(
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 10,
            children: [
              Image(
                image: AssetImage('assets/splash.png'),
                width: 90,
                height: 90,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'TodoList',
                    style: GoogleFonts.adventPro(
                      textStyle: Theme.of(context).textTheme.headline4,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        nextScreen: MyHomePage(title: 'aloalo'),
        backgroundColor: Colors.white,
      ),
    );
  }
}
