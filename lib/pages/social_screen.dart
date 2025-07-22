import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xboxapp/components/top_appbar.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: CustomScrollView(
        slivers: [
          TopAppbar(
            imageUrl: "lib/assets/avatar.png",
            pageName: "Social",
            icon1: FontAwesomeIcons.headphones,
            icon2: FontAwesomeIcons.penToSquare,
          ),
        ],
      ),
    );
  }
}
