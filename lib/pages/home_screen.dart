import 'package:flutter/material.dart';
import 'package:xboxapp/components/game_card.dart';
import 'package:xboxapp/components/top_appbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xboxapp/models/game_model.dart';
import 'package:xboxapp/services/game_service.dart'; // Added this import

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GameService gameService = GameService(); // Added GameService instance

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: CustomScrollView(
        slivers: [
          TopAppbar(
            userName: "Dr.Mort",
            hideUserName: false,
            imageUrl: 'lib/assets/avatar.png',
            gScore: 785,
            trophyScore: 503,
            icon1: FontAwesomeIcons.xbox,
            icon2: FontAwesomeIcons.bell,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: SizedBox(
                      height: 300,
                      child: StreamBuilder<List<GameModel>>(
                        // StreamBuilder for all games
                        stream: gameService.getGamesStream(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator.adaptive(),
                            );
                          }
                          if (snapshot.hasError) {
                            return Center(
                              child: Text(
                                'Error: ${snapshot.error}',
                                style: const TextStyle(color: Colors.red),
                              ),
                            );
                          }
                          if (!snapshot.hasData || snapshot.data!.isEmpty) {
                            return const Center(
                              child: Text(
                                'No games available.',
                                style: TextStyle(color: Colors.white),
                              ),
                            );
                          }

                          final List<GameModel> games = snapshot.data!;
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: games.length,
                            itemBuilder: (context, index) {
                              final GameModel game = games[index];
                              return GameCard(
                                imageUrl: game.imageUrl,
                                title: game.title,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 36),
                  const Text(
                    "Popular on Xbox",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 200,
                    child: StreamBuilder<List<GameModel>>(
                      // StreamBuilder for popular games
                      stream: gameService.getGamesStream(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        }
                        if (snapshot.hasError) {
                          return Center(
                            child: Text(
                              'Error: ${snapshot.error}',
                              style: const TextStyle(color: Colors.red),
                            ),
                          );
                        }
                        if (!snapshot.hasData || snapshot.data!.isEmpty) {
                          return const Center(
                            child: Text(
                              'No popular games available.',
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        }

                        // Filter games by 'isPopular' property
                        final List<GameModel> popularGames = snapshot.data!
                            .where((game) => game.isPopular == true)
                            .toList();

                        if (popularGames.isEmpty) {
                          return const Center(
                            child: Text(
                              'No popular games found.',
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        }

                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: popularGames.length,
                          itemBuilder: (context, index) {
                            final GameModel game = popularGames[index];
                            return GameCard(imageUrl: game.imageUrl);
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 36),
                  const Text(
                    "Jump Back In",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 200,
                    child: StreamBuilder<List<GameModel>>(
                      // StreamBuilder for recently played games
                      stream: gameService.getGamesStream(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        }
                        if (snapshot.hasError) {
                          return Center(
                            child: Text(
                              'Error: ${snapshot.error}',
                              style: const TextStyle(color: Colors.red),
                            ),
                          );
                        }
                        if (!snapshot.hasData || snapshot.data!.isEmpty) {
                          return const Center(
                            child: Text(
                              'No recently played games available.',
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        }

                        // Filter games by 'justPlayed' property
                        final List<GameModel> justPlayedGames = snapshot.data!
                            .where((game) => game.justPlayed == true)
                            .toList();

                        if (justPlayedGames.isEmpty) {
                          return const Center(
                            child: Text(
                              'No recently played games found.',
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        }

                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: justPlayedGames.length,
                          itemBuilder: (context, index) {
                            final GameModel game = justPlayedGames[index];
                            return GameCard(imageUrl: game.imageUrl);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
