import 'dart:convert';

import 'package:lodash_dart/lodash_dart.dart';
import 'package:test/test.dart';

import 'mock/my_model.dart';

void main() {
  group('A group of tests', () {
    final Map<String, dynamic> map = {
      "A": {
        "B": {"C": 3}
      }
    };

    test('test name', () {
      final value = map['A'];
      print(value);
    });

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
  });

  group('Set Map', () {
    Map map = {};
    map.set('A.B.C.D.E', 3333);
    // map = MapUtils.create(map, 'A.B.C.D.E'.split('.'), 3333);

    test('A.B.C.D.E', () {
      final value = map.get('A.B.C.D.E');
      expect(value, equals(3333));
    });
  });

  group('Test Object To Json', () {
    MyModel myModel = MyModel('John', 30);

    String jsonString = myModel.toJson();
    test('Can convert object to json string', () {
      expect(jsonDecode(jsonString), isMap);
    });
  });
}
