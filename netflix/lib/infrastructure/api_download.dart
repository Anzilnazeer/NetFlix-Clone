import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix/core/api_constants.dart';
import 'package:netflix/domain/downloads/model/downloads.dart';

Future<List<Downloads>> fetchDownload() async {
  final response = await http.get(Uri.parse(ApiEndPoints.downloads));

  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);
    Iterable list = result["results"];

    return list
        .map<Downloads>((jsonbody) => Downloads.fromJson(jsonbody))
        .toList();
  } else {
    throw Exception('Failed to load album');
  }
}
