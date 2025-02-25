import 'package:flutter/material.dart';
import 'package:introduction_ui/pages/Intro_page_1.dart';
import 'package:introduction_ui/pages/Intro_page_2.dart';
import 'package:introduction_ui/pages/Intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: SmoothPageIndicator(controller: _pageController, count: 3))
        ],
      ),
    );
  }
}
