import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xboxapp/components/game_card.dart';
import 'package:xboxapp/components/top_appbar.dart';
import 'package:xboxapp/models/game_model.dart';
import 'package:xboxapp/services/game_service.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GameService gameService = GameService();
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: CustomScrollView(
        slivers: [
          TopAppbar(
            imageUrl: "lib/assets/avatar.png",
            pageName: "My Library",
          ),
          StreamBuilder<List<GameModel>>(
            stream: gameService.getGamesStream(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator.adaptive());
              }
              if (snapshot.hasError) {
                return SliverFillRemaining(
                  child: Center(
                    child: Text("Error:${snapshot.error}"),
                  ),
                );
              }
              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return SliverFillRemaining(
                  child: Center(
                    child: Text("No games in your library"),
                  ),
                );
              }
              final List<GameModel> games = snapshot.data!;
              final int totalGames = games.length;

              return SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "$totalGames games",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                FontAwesomeIcons.bars,
                                color: Colors.white,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                FontAwesomeIcons.bell,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      sliver: SliverGrid(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 8.0,
                              mainAxisSpacing: 8.0,
                            ),
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final GameModel game = games[index];
                            return GameCard(imageUrl: game.imageUrl);
                          },
                          childCount: games.length,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
