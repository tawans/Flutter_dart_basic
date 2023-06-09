import 'dart:convert';
import 'package:http/http.dart' as http;

class Movie {
  final String title;
  final String overview;
  final String releaseDate;

  Movie(
      {required this.title, required this.overview, required this.releaseDate});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      overview: json['overview'],
      releaseDate: json['release_date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'overview': overview,
      'release_date': releaseDate,
    };
  }
}

void main() async {
  final apiKey = 'a64533e7ece6c72731da47c9c8bc691f';
  final language = 'ko-KR';
  final movieId = 569094;

  final url =
      'https://api.themoviedb.org/3/movie/$movieId?api_key=$apiKey&language=$language&page=1';

  try {
    final response = await http.get(Uri.parse(url));
    final data = jsonDecode(response.body);
    final movie = Movie.fromJson(data);

    print(jsonEncode(movie.toJson()));
  } catch (e) {
    print('오류가 발생했습니다: $e');
  }
}
