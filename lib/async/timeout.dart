import 'dart:async';

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

Future<String> executeWithTimeout() async {
  final timeoutFuture = Future<String>.delayed(Duration(seconds: 5), () {
    throw TimeoutException('5초 시간 초과');
  });

  try {
    return await Future.any([timeoutFuture]);
  } on TimeoutException {
    return 'timeout';
  }
}

void main() async {
  final result = await executeWithTimeout();
  print(result);
}
