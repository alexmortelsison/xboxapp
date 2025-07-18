import 'package:flutter/material.dart';
import 'package:xboxapp/components/recently_added_card.dart';
import 'package:xboxapp/models/recently_added_model.dart';

class RecentlyAdded extends StatelessWidget {
  const RecentlyAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recently Added",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: RecentlyAddedModel.getGames().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final RecentlyAddedModel games =
                    RecentlyAddedModel.getGames()[index];
                return RecentlyAddedCard(imageUrl: games.imageUrl);
              },
            ),
          ),
        ],
      ),
    );
  }
}
