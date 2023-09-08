import 'dart:convert';
import 'dart:mirrors';

import 'package:lodash_dart/src/utils/map.dart';

extension ObjectEx on Object {
  String toJson() {
    Map<String, dynamic> jsonMap = {};
    InstanceMirror instanceMirror = reflect(this);
    ClassMirror classMirror = instanceMirror.type;

    classMirror.declarations.forEach((key, value) {
      if (value is VariableMirror && !value.isStatic) {
        String fieldName = MirrorSystem.getName(key);
        var fieldValue = instanceMirror.getField(key).reflectee;
        MapUtils.create(jsonMap, [fieldName], fieldValue);
      }
    });

    return jsonEncode(jsonMap);
  }
}
