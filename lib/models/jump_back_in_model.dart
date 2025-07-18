class JumpBackInModel {
  final String imageUrl;

  JumpBackInModel({required this.imageUrl});

  static final List<JumpBackInModel> _games = [
    JumpBackInModel(imageUrl: "lib/assets/obscure.jpg"),
    JumpBackInModel(imageUrl: "lib/assets/fc25.webp"),
    JumpBackInModel(imageUrl: "lib/assets/cod.jpg"),
  ];

  static List<JumpBackInModel> getGames() => _games;
}
