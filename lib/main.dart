import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ci_demo/counter.dart';

void main() {
  test('counter should increment', () {
    final counter = Counter();

    counter.increment();

    expect(counter.value, 1);
  });
}