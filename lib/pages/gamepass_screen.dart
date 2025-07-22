import 'package:flutter/material.dart';
import 'package:xboxapp/components/top_appbar.dart';

class GamepassScreen extends StatelessWidget {
  const GamepassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: CustomScrollView(
        slivers: [
          TopAppbar(
            imageUrl: "lib/assets/avatar.png",
            userName: "Dr.Mort",
            trophyScore: 785,
            gScore: 503,
          ),
        ],
      ),
    );
  }
}
