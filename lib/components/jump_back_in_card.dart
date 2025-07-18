import 'package:flutter/material.dart';

class JumpBackInCard extends StatelessWidget {
  final String imageUrl;
  const JumpBackInCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Image.asset(imageUrl),
    );
  }
}
