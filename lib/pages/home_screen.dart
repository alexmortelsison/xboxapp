import 'package:flutter/material.dart';
import 'package:xboxapp/components/hero_card.dart';
import 'package:xboxapp/components/jump_back_in.dart';
import 'package:xboxapp/components/official_posts.dart';
import 'package:xboxapp/components/recently_added.dart';
import 'package:xboxapp/components/top_appbar.dart';
import 'package:xboxapp/models/herogames_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: CustomScrollView(
        slivers: [
          TopAppbar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: HeroGamesModel.getHeroGames().length,
                      itemBuilder: (context, index) {
                        final games = HeroGamesModel.getHeroGames()[index];
                        return HeroCard(
                          title: games.title,
                          description: games.description,
                          imageUrl: games.imageUrl,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 24),
                  OfficialPosts(),
                  SizedBox(height: 24),
                  JumpBackIn(),
                  SizedBox(height: 24),
                  RecentlyAdded(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
