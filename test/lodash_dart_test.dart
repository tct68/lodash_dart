import 'package:lodash_dart/lodash_dart.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final Map<String, dynamic> map = {
      "A": {
        "B": {"C": 3}
      }
    };

    test('First Test', () {
      expect(
          map.get('A'),
          equals({
            "B": {"C": 3}
          }));
    });

    test('First Test', () {
      expect(map.get('A.B'), equals({"C": 3}));
    });

    test('First Test', () {
      expect(map.get<int>('A.B.C'), equals(3));
    });

    test('First Test', () {
      expect(() => map.get<String>('A.B.C'), throwsA(TypeMatcher<Exception>()));
    });
  });
}
