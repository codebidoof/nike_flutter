import 'package:flutter/material.dart';
import 'package:nike_flutter/bottom_bar.dart';
import 'package:nike_flutter/feature/home/new_section.dart';
import 'package:nike_flutter/feature/home/top_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            bottom: 220,
            left: 17,
            right: 17,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopSection(),
              SizedBox(height: 44),
              Image.asset("assets/images/home_banner.png"),
              SizedBox(height: 41),
              NewSection(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const BottomBar(currentIndex: 0),
    );
  }
}
