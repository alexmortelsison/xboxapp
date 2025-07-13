import 'package:flutter/material.dart';
import 'package:xboxapp/components/home_card.dart';
import 'package:xboxapp/components/small_card.dart';
import 'package:xboxapp/models/home_model.dart';
import 'package:xboxapp/models/small_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            color: const Color.fromARGB(66, 158, 158, 158),
            child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("lib/assets/avatar.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr.Mort",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 8,
                                  child: Text(
                                    "G",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Text(
                                    "785",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Icon(
                                    Icons.emoji_events,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2),
                                  child: Text(
                                    "503",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, top: 8),
                    child: Icon(
                      Icons.notifications_outlined,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 480,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: HomeModel.getGames().length,
              itemBuilder: (context, index) {
                final HomeModel games = HomeModel.getGames()[index];
                return HomeCard(
                  title: games.title,
                  description: games.description,
                  imageUrl: games.imageUrl,
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Official posts from games",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 20),
                CircleAvatar(radius: 24),
                SizedBox(height: 28),
                Text(
                  "Jump back in",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: SmallModel.getGames().length,
                    itemBuilder: (context, index) {
                      final SmallModel smallGames =
                          SmallModel.getGames()[index];
                      return SmallCard(imageUrl: smallGames.imageUrl);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
