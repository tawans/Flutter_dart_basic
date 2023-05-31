class Word {
  String word = '';

  bool isVowel(int i) =>
      word.substring(i, i + 1).contains(RegExp(r'[aeiouAEIOU]'));

  bool isConsonant(int i) =>
      !word.substring(i, i + 1).contains(RegExp(r'[aeiouAEIOU]'));

  // 영어 소문자와 대문자로 이루어진 단어인지 확인
  bool isValidWord() {
    return word.toLowerCase().contains(RegExp(r'^[a-z]+$'));
  }
}

void main() {
  Word word = Word();
  word.word = 'apple';

  if (word.isValidWord()) {
    print(word.isVowel(0));
    print(word.isConsonant(0));
  } else {
    print('영어 단어가 아닙니다.');
  }
}
