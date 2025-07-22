import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String? title;
  final String imageUrl;
  const GameCard({
    super.key,
    this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withAlpha(100),
              BlendMode.darken,
            ),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.fill,
              height: 350,
              width: 250,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Text(
              title ?? "",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
