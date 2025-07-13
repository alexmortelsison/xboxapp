class HomeModel {
  final String title;
  final String description;
  final String imageUrl;

  HomeModel({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  static final List<HomeModel> _games = [
    HomeModel(
      title: "Join GamePass",
      description: "",
      imageUrl: "lib/assets/gamepass.jpg",
    ),
    HomeModel(
      title: "Rematch",
      description: "Available Now",
      imageUrl: "lib/assets/rematch.png",
    ),
    HomeModel(
      title: "Get College Football 26",
      description: "And bring glory home",
      imageUrl: "lib/assets/collegefoot.webp",
    ),
  ];

  static List<HomeModel> getGames() => _games;
}
