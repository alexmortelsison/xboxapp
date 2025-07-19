class PopularModel {
  final String imageUrl;

  PopularModel({required this.imageUrl});

  static final List<PopularModel> _games = [
    PopularModel(imageUrl: "lib/assets/cod.png"),
    PopularModel(imageUrl: "lib/assets/fortnite.webp"),
    PopularModel(imageUrl: "lib/assets/obscure.jpg"),
  ];

  static List<PopularModel> getGames() => _games;
}
