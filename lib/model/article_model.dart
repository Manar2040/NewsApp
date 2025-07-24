class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String url;
  final String source;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.url,
    required this.source
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
      url: json['url'],
      source: json['source']['name']
    );
  }
}
