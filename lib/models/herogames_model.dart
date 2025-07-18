class HeroGamesModel {
  final String title;
  final String description;
  final String imageUrl;

  HeroGamesModel({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  static final List<HeroGamesModel> _heroGamesList = [
    HeroGamesModel(
      title: "Join GamePass",
      description: "",
      imageUrl: "lib/assets/gamepass.jpg",
    ),
    HeroGamesModel(
      title: "Rematch",
      description: "Pre Order Now",
      imageUrl: "lib/assets/rematch.png",
    ),
    HeroGamesModel(
      title: "College Football",
      description: "Available Now",
      imageUrl: "lib/assets/collegefoot.webp",
    ),
  ];

  static List<HeroGamesModel> getHeroGames() => _heroGamesList;
}
