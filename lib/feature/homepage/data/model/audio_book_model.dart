class AudioBook {
  String bookName;
  AudioBookCategory audioBookCategory;
  String bookImageUrl;
  double rating;
  String author;
  double price;
  AudioBook(
      {required this.bookName,
      required this.audioBookCategory,
      required this.rating,
      required this.author,
      required this.bookImageUrl,
      required this.price});
}

enum AudioBookCategory {
  all,
  biographics,
  management,
  money,
  literature,
  religious,
  fitness
}
