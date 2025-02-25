import 'package:flutter/material.dart';
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
            children: [
              Container(color: Colors.blue),
              Container(color: Colors.yellow),
              Container(color: Colors.green),
            ],
          ),
          Container(
              alignment: Alignment(0, 0),
              child: SmoothPageIndicator(controller: _pageController, count: 3))
        ],
      ),
    );
  }
}
