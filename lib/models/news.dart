class News {
  final String _title;
  final String _description;
  final String _imageUrl;

  News({
    required String title,
    required String description,
    required String imageUrl,
  })  : _title = title,
        _description = description,
        _imageUrl = imageUrl;

  String get title => _title;

  String get description => _description;

  String get imageUrl => _imageUrl;
}
