import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final String imageUrl;
  const SmallCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
