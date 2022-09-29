import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:usodeapi/Models/Model_Gifs.dart';

class GifProvider {
  final url =
      "https://api.giphy.com/v1/gifs/trending?api_key=NhmjaCjgC56OXE4qRwyquhoxNLMyxFXD&limit=10&rating=g&offset=";
  Future<List<ModelGifs>> getGifs() async {
    final resp = await http.get(Uri.parse(url));
    if (resp.statusCode == 200) {
      String body = utf8.decode(resp.bodyBytes);
      final jsonData = jsonDecode(body);
      final gif = Gifs.fromJsonList(jsonData);
      return gif.items;
    } else {
      throw Exception("Ocurre algo ${resp.statusCode}");
    }
  }
}
