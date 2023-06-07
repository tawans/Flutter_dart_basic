import 'dart:convert';

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mokData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mokData);
}

void main() async {
  final String info = await getMovieInfo();
  Map<String, dynamic> data = jsonDecode(info);
  print('감독은 : ${data['director']} 입니다.');
}
