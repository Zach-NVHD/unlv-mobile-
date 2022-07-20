class User {
  User(
      {this.first = '',
      this.last = '',
      this.gradeLevel = 0,
      this.major = '',
      this.docId = ''});

  String first;
  String last;
  int gradeLevel;
  String major;
  String docId;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'first': first,
      'last': last,
      'gradeLevel': gradeLevel,
      'major': major
    };
    return map;
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
    docId : $docId
''';
  }
}
