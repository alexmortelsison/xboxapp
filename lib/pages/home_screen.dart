import 'package:flutter/material.dart';
import 'package:xboxapp/components/game_card.dart';
import 'package:xboxapp/components/top_appbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xboxapp/models/game_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                      height: 350,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: GameModel.getAllGames().length,
                        itemBuilder: (context, index) {
                          final GameModel game = GameModel.getAllGames()[index];
                          return GameCard(
                            imageUrl: game.imageUrl,
                            title: game.title,
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 36),
                  Text(
                    "Popular on Xbox",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: GameModel.getPopularGames().length,
                      itemBuilder: (context, index) {
                        final GameModel popularGames =
                            GameModel.getPopularGames()[index];
                        return GameCard(imageUrl: popularGames.imageUrl);
                      },
                    ),
                  ),
                  SizedBox(height: 36),
                  Text(
                    "Jump Back In",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: GameModel.getJustPlayedGames().length,
                      itemBuilder: (context, index) {
                        final playedgames =
                            GameModel.getJustPlayedGames()[index];
                        return GameCard(imageUrl: playedgames.imageUrl);
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
