import 'package:flutter/material.dart';
import 'package:xboxapp/components/top_appbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: CustomScrollView(
        slivers: [
          TopAppbar(
            userName: "Dr.Mort",
            hideUserName: false,
            imageUrl: 'lib/assets/avatar.png',
            gScore: 785,
            trophyScore: 503,
            icon1: FontAwesomeIcons.xbox,
            icon2: FontAwesomeIcons.bell,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
