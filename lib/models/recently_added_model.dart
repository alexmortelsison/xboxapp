class RecentlyAddedModel {
  final String imageUrl;

  RecentlyAddedModel({required this.imageUrl});

  static final List<RecentlyAddedModel> _games = [
    RecentlyAddedModel(imageUrl: "lib/assets/theman.jpg"),
    RecentlyAddedModel(imageUrl: "lib/assets/fc25.webp"),
    RecentlyAddedModel(imageUrl: "lib/assets/collegefoot.webp"),
  ];

  static List<RecentlyAddedModel> getGames() => _games;
}
