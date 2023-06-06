import 'package:flutter/material.dart';
import 'package:gymie/authentication/login_page.dart';
import 'package:gymie/on_boarding/onboarding_template.dart';
import 'package:gymie/widgets/custom_elevated_button.dart';
import 'package:gymie/widgets/custom_outlined_button.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff343434),
      body: Column(
        children: [
          OnboardingTemplate(
            imagePath:
                'https://images.unsplash.com/photo-1548690312-e3b507d8c110?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJveSUyMGRvaW5nJTIwZ3ltfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
            subTitle:
                'Push yourself.\n Because no one else is going to do it for you.',
            title: 'Start Your Journey',
            imageHeight: MediaQuery.of(context).size.height * 0.7,
          ),
          const SizedBox(
            height: 60,
          ),
          CustomElevatedButton(
            btnText: 'Login',
            onButtonPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          CustomOutlinedButton(btnText: 'Sign Up', onButtonPressed: () {}),
        ],
      ),
    );
  }
}
