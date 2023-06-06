import 'package:flutter/material.dart';
import 'package:gymie/authentication/signup_page.dart';
import 'package:gymie/on_boarding/onboarding_template.dart';
import 'package:gymie/widgets/custom_elevated_button.dart';
import 'package:gymie/widgets/label_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (FocusScope.of(context).hasFocus) {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xff343434),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OnboardingTemplate(
                crossAxisAlignment: CrossAxisAlignment.start,
                imagePath:
                    'https://images.unsplash.com/photo-1550345332-09e3ac987658?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Z3ltfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
                subTitle: '',
                title: 'Welcome Back',
                titlePadding: const EdgeInsets.only(
                  left: 16,
                  top: 32,
                ),
                imageHeight: MediaQuery.of(context).size.height * 0.4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LabeledTextField(
                      label: 'Email',
                      hintText: 'Please enter email',
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    LabeledTextField(
                      label: 'Password',
                      hintText: 'Please enter password',
                      keyboardType: TextInputType.visiblePassword,
                      controller: _passwordController,
                    ),
                    const SizedBox(
                      height: 72,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                          btnText: 'Login',
                          onButtonPressed: () {},
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignupPage()),
                              );
                            },
                            child: RichText(
                              text: TextSpan(
                                text: "Don't have an account?",
                                style: TextStyle(color: Colors.grey.shade500),
                                children: const [
                                  TextSpan(
                                    text: ' Sign up',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
