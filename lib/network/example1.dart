import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final apiKey = 'a64533e7ece6c72731da47c9c8bc691f';
  final language = 'ko-KR';
  final page = '1';

  final url =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey&language=$language&page=$page';

  try {
    final response = await http.get(Uri.parse(url));
    final data = jsonDecode(response.body);

    print(jsonEncode(data));
  } catch (e) {
    print('오류가 발생했습니다: $e');
  }
}
