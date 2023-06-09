import 'dart:convert';
import 'package:http/http.dart' as http;

class Movie {
  final String title;
  final String releaseDate;
  final String overview;

  Movie({
    required this.title,
    required this.releaseDate,
    required this.overview,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      releaseDate: json['release_date'],
      overview: json['overview'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'release_date': releaseDate,
      'overview': overview,
    };
  }
}

void main() async {
  final String apiKey = 'a64533e7ece6c72731da47c9c8bc691f';
  final String language = 'ko-KR';
  final int page = 1;

  final String apiUrl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey&language=$language&page=$page';

  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> results = data['results'];

    List<Movie> movies =
        results.map((movieJson) => Movie.fromJson(movieJson)).toList();

    // JSON 형태로 출력
    print(json.encode(movies));
  } else {
    print('영화 정보를 가져오는데 실패하였습니다 : ${response.statusCode}');
  }
}
