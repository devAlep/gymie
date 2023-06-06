import 'package:flutter/material.dart';
import 'package:gymie/on_boarding/onboarding_template.dart';
import 'package:gymie/widgets/custom_elevated_button.dart';
import 'package:gymie/widgets/label_textfield.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                    'https://images.unsplash.com/photo-1605296867304-46d5465a13f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGd5bXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                subTitle: '',
                title: 'Welcome,',
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
                      height: 48,
                    ),
                    LabeledTextField(
                      label: 'Confirm Password',
                      hintText: 'Re-enter password',
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
                          btnText: 'Confirm',
                          onButtonPressed: () {},
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Already have an account?",
                            style: TextStyle(color: Colors.grey.shade500),
                            children: const [
                              TextSpan(
                                text: ' Login ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              )
                            ],
                          ),
                        )
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
