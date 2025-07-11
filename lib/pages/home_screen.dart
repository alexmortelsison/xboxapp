import 'package:flutter/material.dart';
import 'package:xboxapp/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Home",
        style: textColor,
      ),
    );
  }
}
