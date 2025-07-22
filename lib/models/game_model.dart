class GameModel {
  final String title;
  final String imageUrl;
  final bool isPopular;
  final bool recentlyAdded;
  final bool justPlayed;

  GameModel({
    required this.title,
    required this.imageUrl,
    required this.isPopular,
    required this.recentlyAdded,
    required this.justPlayed,
  });

  static final List<GameModel> _allGames = [
    GameModel(
      title: "Call Of Duty",
      imageUrl: "lib/assets/cod.jpg",
      isPopular: true,
      recentlyAdded: true,
      justPlayed: false,
    ),
    GameModel(
      title: "College Football",
      imageUrl: "lib/assets/collegefoot.webp",
      isPopular: true,
      recentlyAdded: true,
      justPlayed: false,
    ),
    GameModel(
      title: "Football",
      imageUrl: "lib/assets/fc25.webp",
      isPopular: false,
      recentlyAdded: true,
      justPlayed: false,
    ),
    GameModel(
      title: "Fortnite",
      imageUrl: "lib/assets/fortnite.webp",
      isPopular: true,
      recentlyAdded: true,
      justPlayed: false,
    ),
    GameModel(
      title: "Forza",
      imageUrl: "lib/assets/forza.jpg",
      isPopular: true,
      recentlyAdded: true,
      justPlayed: false,
    ),
    GameModel(
      title: "Obscure Expedition 33",
      imageUrl: "lib/assets/obscure.jpg",
      isPopular: true,
      recentlyAdded: true,
      justPlayed: false,
    ),
    GameModel(
      title: "The Man Who Erased His Name",
      imageUrl: "lib/assets/theman.jpg",
      isPopular: true,
      recentlyAdded: true,
      justPlayed: true,
    ),
    GameModel(
      title: "Rematch",
      imageUrl: "lib/assets/rematch.png",
      isPopular: true,
      recentlyAdded: true,
      justPlayed: false,
    ),
    GameModel(
      title: "NBA 2k25",
      imageUrl: "lib/assets/2k.jpg",
      isPopular: true,
      recentlyAdded: true,
      justPlayed: false,
    ),
  ];

  static List<GameModel> getAllGames() => _allGames;

  static List<GameModel> getPopularGames({int limit = 5}) {
    final popularGames = _allGames.where((game) => game.isPopular).toList();
    popularGames.shuffle();
    return popularGames.take(limit).toList();
  }

  static List<GameModel> getRecentlyAdded() {
    final recentlyAdded = _allGames
        .where((game) => game.recentlyAdded)
        .toList();
    recentlyAdded.shuffle();
    return recentlyAdded;
  }

  static List<GameModel> getJustPlayedGames() {
    return _allGames.where((game) => game.justPlayed).toList();
  }
}
