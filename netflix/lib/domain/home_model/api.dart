

class HomeApiResult {
  HomeApiResult({
    this.backdropPath,
    this.originalTitle,
    this.overview,
    this.posterPath,
  });

  String? backdropPath;

  String? originalTitle;
  String? overview;

  String? posterPath;

  factory HomeApiResult.fromJson(Map<String, dynamic> json) => HomeApiResult(
        backdropPath: json["backdrop_path"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        posterPath: json["poster_path"],
      );

  Map<String, dynamic> toJson() => {
        "backdrop_path": backdropPath,
        "original_title": originalTitle,
        "overview": overview,
        "poster_path": posterPath,
      };
}
