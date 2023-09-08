import 'dart:convert';

class StringUtils {
  static bool isJson(String text) {
    try {
      jsonDecode(text);
      return true;
    } catch (e) {
      return false;
    }
  }
}
