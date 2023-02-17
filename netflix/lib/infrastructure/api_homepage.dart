import 'dart:convert';

import 'package:netflix/domain/home_model/api.dart';

import '../core/api_constants.dart';
import 'package:http/http.dart' as http;

Future<List<HomeApiResult>> fetchHomePage() async {
  final response = await http.get(Uri.parse(ApiEndPoints.homepage));

  if (response.statusCode == 200) {
    final homeresult = jsonDecode(response.body);
    Iterable posterlist = homeresult["results"];
    return posterlist.map<HomeApiResult>((json) => HomeApiResult.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}
