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
    final Stream<List<GameModel>> gamesStream = gameService.getGamesStream();

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: CustomScrollView(
        slivers: [
          // Use SliverAppBar directly or modify TopAppbar to return SliverAppBar
          TopAppbar(
            imageUrl: "lib/assets/avatar.png",
            pageName: "My Library",
            icon1: Icons.search,
            icon2: FontAwesomeIcons.bell,
          ),
          StreamBuilder<List<GameModel>>(
            stream: gameService.getGamesStream(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator.adaptive()),
                );
              }

              if (snapshot.hasError) {
                return SliverFillRemaining(
                  child: Center(
                    child: Text(
                      "Error: ${snapshot.error}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }

              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const SliverFillRemaining(
                  child: Center(
                    child: Text(
                      "No games in your library",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }

              final games = snapshot.data!;
              final totalGames = games.length;

              return SliverList(
                delegate: SliverChildListDelegate([
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
                        const Row(
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
                  ),
                ]),
              );
            },
          ),
          StreamBuilder<List<GameModel>>(
            stream: gameService.getGamesStream(),
            builder: (context, snapshot) {
              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const SliverToBoxAdapter(child: SizedBox.shrink());
              }

              final games = snapshot.data!;

              return SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final game = games[index];
                      return GameCard(
                        imageUrl: game.imageUrl,
                        title: game.title,
                      );
                    },
                    childCount: games.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 1,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
