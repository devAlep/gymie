import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymie/authentication/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.titilliumWeb().fontFamily),
      home: const LoginPage(),
      // initialRoute: 'login',
    );
  }
}

// class OnboardingPageOne extends StatelessWidget {
//   const OnboardingPageOne({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('OnBoardingPage1'),),
//       body: Center(child: raised)
//       ),
//     );
//   }
// }
