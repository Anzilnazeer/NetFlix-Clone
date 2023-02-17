import 'api.dart';

class HomePageApi {
  HomePageApi({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  int? page;
  List<HomeApiResult?>? results;
  int? totalPages;
  int? totalResults;

  factory HomePageApi.fromJson(Map<String, dynamic> json) => HomePageApi(
        page: json["page"],
        results: json["results"] == null
            ? []
            : List<HomeApiResult?>.from(
                json["results"]!.map((x) => HomeApiResult.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x!.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
      };
}
