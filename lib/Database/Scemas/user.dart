import 'dart:convert';

class User {
  User({this.first = '', this.last = '', this.gradeLevel = 0, this.major = ''});

  String first;
  String last;
  int gradeLevel;
  String major;

  String toJson() {
    Map<String, dynamic> map = {
      'first': first,
      'last': last,
      'gradeLevel': gradeLevel,
      'major': major
    };
    return jsonEncode(map);
  }

  void fromJson(Map<String, dynamic> map) {
    first = map['first'] ?? '';
    last = map['last'] ?? '';
    gradeLevel = map['gradeLevel'] ?? 12;
    major = map['major'] ?? '';
  }

  @override
  String toString() {
    return '''
    first : $first,
    last : $last,
    gradeLevel : $gradeLevel,
    major : $major
''';
  }
}
