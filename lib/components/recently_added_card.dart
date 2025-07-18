import 'package:flutter/material.dart';

class RecentlyAddedCard extends StatelessWidget {
  final String imageUrl;
  const RecentlyAddedCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Image.asset(imageUrl),
    );
  }
}
