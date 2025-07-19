import 'package:flutter/material.dart';
import 'package:xboxapp/components/popular_card.dart';
import 'package:xboxapp/models/popular_model.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        Text(
          "Popular on Xbox",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: PopularModel.getGames().length,
            itemBuilder: (context, index) {
              final PopularModel games = PopularModel.getGames()[index];
              return PopularCard(
                imageUrl: games.imageUrl,
              );
            },
          ),
        ),
      ],
    );
  }
}
