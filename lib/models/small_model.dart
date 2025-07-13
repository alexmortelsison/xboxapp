class SmallModel {
  final String title;
  final String description;
  final String imageUrl;

  SmallModel({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  static final List<SmallModel> _games = [
    SmallModel(
      title: "Join GamePass",
      description: "",
      imageUrl: "lib/assets/theman.jpg",
    ),
    SmallModel(
      title: "Rematch",
      description: "Available Now",
      imageUrl: "lib/assets/fortnite.webp",
    ),
    SmallModel(
      title: "Get College Football 26",
      description: "And bring glory home",
      imageUrl: "lib/assets/forza.jpg",
    ),
  ];

  static List<SmallModel> getGames() => _games;
}
