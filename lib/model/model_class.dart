class QuotesModel {
  final String quotes;
  final String author;
  final String category;

  QuotesModel({
    required this.quotes,
    required this.author,
    required this.category,
  });

  factory QuotesModel.fromMap({required Map data}) {
    return QuotesModel(
      quotes: data['quote'],
      author: data['author'],
      category: data['category'],
    );
  }
}
