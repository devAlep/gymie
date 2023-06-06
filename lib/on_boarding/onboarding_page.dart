import 'package:flutter/material.dart';
import 'package:gymie/authentication/auth_page.dart';
import 'package:gymie/on_boarding/onboarding_template.dart';
import 'package:gymie/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late List<Widget> _onboardingItems;

  final PageController _pageController = PageController();

  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _onboardingItems = [
      const OnboardingTemplate(
        imagePath: 'assets/images/gym1.jpg',
        subTitle:
            "Experience convenience and flexibility with our gym app's on-demand classes, virtual trainers, and customizable scheduling, empowering you to prioritize your health and fitness wherever you go. ",
        title: 'Welcome',
      ),
      const OnboardingTemplate(
        imagePath: 'assets/images/gym2.jpg',
        subTitle:
            'Stay motivated and committed to your fitness journey with our gym app. Get access to a wide range of workout programs, track your progress, and achieve your fitness goals effectively.',
        title: 'Stay Fit',
      ),
      const OnboardingTemplate(
        imagePath: 'assets/images/gym3.jpg',
        subTitle:
            'Achieve your fitness goals with our all-in-one gym app, offering personalized workout plans, real-time progress tracking, and expert guidance at your fingertips.',
        title: 'Achieve Your Goals',
      ),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff343434),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _pageIndex = value;
                });
              },
              itemCount: _onboardingItems.length,
              itemBuilder: (context, index) => _onboardingItems[index],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: _onboardingItems.length,
            axisDirection: Axis.horizontal,
            effect: const ExpandingDotsEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 12.0,
                dotHeight: 6.0,
                paintStyle: PaintingStyle.fill,
                strokeWidth: 1.5,
                dotColor: Colors.grey,
                activeDotColor: Colors.yellow),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          CustomElevatedButton(
              btnText: _pageIndex == 2 ? 'Get Started' : 'Next',
              onButtonPressed: () {
                if (_pageIndex < _onboardingItems.length - 1) {
                  _pageController.animateToPage(
                    _pageIndex + 1,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeIn,
                  );
                } else {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AuthPage(),
                  ));
                  // Handle the case when the last item is reached
                  // You can navigate to a different screen or perform any desired action here
                }
              }),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
        ],
      ),
    );
  }
}
