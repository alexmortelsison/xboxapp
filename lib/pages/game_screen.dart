import 'package:flutter/material.dart';
import 'package:xboxapp/const.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Game",
        style: textColor,
      ),
    );
  }
}
