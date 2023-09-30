import 'package:flutter/material.dart';

import '../widgets/custom_logo_bar.dart';
import '../widgets/get_buttons.dart';
import '../widgets/onboarding_view_body_widget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 56),
              const CustomlogoBar(),
              const SizedBox(height: 43),
              OnBoardingBodyWidget(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              const SizedBox(height: 62),
              GetButtons(currenIndex: currentIndex, controller: _controller),
              const SizedBox(height: 52),
            ],
          ),
        ),
      ),
    );
  }
}
