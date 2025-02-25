import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(color: Colors.blue),
          Container(color: Colors.yellow),
          Container(color: Colors.green),
        ],
      ),
    );
  }
}
