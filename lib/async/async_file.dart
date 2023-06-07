import 'dart:async';
import 'dart:io';

Future<void> modifyAndCopyCSVFile() async {
  try {
    final file = File('lib/async/sample.csv');
    final exists = await file.exists();
    if (!exists) {
      throw Exception('파일을 찾을 수 없습니다.');
    }

    final csvString = await file.readAsString();
    final changeText = csvString.replaceAll('한석봉', '김석봉');

    await File('lib/async/sample_copy.csv').writeAsString(changeText);
    print('파일 수정 및 복사 완료!');
  } catch (e) {
    print('오류: $e');
  }
}

void main() {
  modifyAndCopyCSVFile();
}
