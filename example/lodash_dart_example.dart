import 'package:lodash_dart/lodash_dart.dart';

void main() {
  final Map<String, dynamic> map = {
    "A": {
      "B": {"C": 3}
    }
  };

  var value = map.get('A.B.C.D.E.F');
  print(value);
}
