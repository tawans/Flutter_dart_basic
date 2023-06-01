import 'dart:io';

void main() {
  String source = 'original.txt';
  String target = 'file_copy/copy.txt';

  // 원본 파일 생성 및 텍스트 저장
  File(source).writeAsStringSync('original file');
  // 디렉토리 생성
  Directory('file_copy').createSync();
  // 파일 복사
  File(source).copySync(target);
}
