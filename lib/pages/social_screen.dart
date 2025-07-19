import 'package:flutter/material.dart';
import 'package:xboxapp/components/top_appbar.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: CustomScrollView(
        slivers: [
          TopAppbar(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Image.asset(
                  "lib/assets/friends.png",
                  height: 350,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
