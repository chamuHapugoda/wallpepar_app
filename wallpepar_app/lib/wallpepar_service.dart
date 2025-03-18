import 'dart:convert';
import 'package:http/http.dart' as http;

class WallpaperService {
  final String _apiKey = 'x8Fii02ei8RrCm6v6zqSrfXFJHqjxBJOAJ9FxdWO3ypN5oEox1YyTjEI';

  Future<List<String>> fetchWallpapers() async {
    final response = await http.get(
      Uri.parse('https://api.pexels.com/v1/curated?per_page=20'),
      headers: {'Authorization': _apiKey},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final wallpapers = data['photos'] as List;
      return wallpapers.map((wallpaper) => wallpaper['src']['medium'] as String).toList();
    } else {
      throw Exception('Failed to load wallpapers');
    }
  }
}
