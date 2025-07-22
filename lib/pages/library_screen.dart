import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xboxapp/components/game_card.dart';
import 'package:xboxapp/components/top_appbar.dart';
import 'package:xboxapp/models/game_model.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int totalGames = GameModel.getAllGames().length;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: CustomScrollView(
        slivers: [
          TopAppbar(
            imageUrl: "lib/assets/avatar.png",
            pageName: "My Library",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$totalGames games",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.bars,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          Icon(
                            FontAwesomeIcons.bell,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: GameModel.getAllGames().length,
                (context, index) {
                  final GameModel allGames = GameModel.getAllGames()[index];
                  return GameCard(imageUrl: allGames.imageUrl);
                },
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
