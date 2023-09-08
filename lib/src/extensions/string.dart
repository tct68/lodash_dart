import 'package:lodash_dart/lodash_dart.dart';

extension StringEx on String {
  bool isJson() {
    return StringUtils.isJson(this);
  }
}
