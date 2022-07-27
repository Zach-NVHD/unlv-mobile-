class TextFieldChecks {
  List<String> letters = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
    '\$',
    '(',
    ')',
    '_',
    '~',
    '#',
    '@',
    '!',
    '?',
    ';',
    ',',
    '.',
    ':',
    '{',
    '}',
    ']',
    '[',
    '|',
    '\\',
    '%',
    '*',
    '=',
    '-',
    '+',
    '<',
    '>'
  ];

  List<String> lowercaseLetters = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];

  List<String> uppercaseLetters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  List<String> nums = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];

  List<String> specialCharacters = [
    '\$',
    '(',
    ')',
    '_',
    '~',
    '#',
    '@',
    '!',
    '?',
    ';',
    ',',
    '.',
    ':',
    '{',
    '}',
    ']',
    '[',
    '|',
    '\\',
    '%',
    '*',
    '=',
    '-',
    '+',
    '<',
    '>'
  ];

  bool isFirstNameGood(String text) {
    bool isGood = ifIsAllBlanks(text);

    return isGood;
  }

  bool alwaysGood(String text) {
    return true;
  }

  bool isLastNameGood(String text) {
    bool isGood = ifIsAllBlanks(text);

    return isGood;
  }

  bool isEmailGood(String text) {
    bool isGood = ifIsAllBlanks(text);
    if (isGood == false) {
      return false;
    }
    if (text.contains('@') == false) {
      return false;
    }

    if (text.contains('.') == false) {
      return false;
    }

    if (text.substring(text.indexOf('@')).length < 5) {
      return false;
    }

    return isGood;
  }

  bool containsAnythingButNumbers(String text) {
    if(ifIsAllBlanks(text) == false){
      return false;
    }
    for (int i = 0; i < text.length; i++) {
      if (uppercaseLetters.contains(text[i]) ||
          lowercaseLetters.contains(text[i]) ||
          specialCharacters.contains(text[i])) {
        return false;
      }
    }
    return true;
  }

  bool isPasswordGood(String text) {
    bool uppercase = false;
    bool lowercase = false;
    bool number = false;
    bool character = false;

    for (int i = 0; i < text.length; i++) {
      if (nums.contains(text[i])) {
        number = true;
      }
      if (uppercaseLetters.contains(text[i])) {
        uppercase = true;
      }
      if (lowercaseLetters.contains(text[i])) {
        lowercase = true;
      }
      if (specialCharacters.contains(text[i])) {
        character = true;
      }
    }

    //if any one condition is not met return false
    return uppercase == true &&
        lowercase == true &&
        number == true &&
        character == true &&
        text.length > 6;
  }

  bool ifIsAllBlanks(String text) {
    if (text.replaceAll(' ', '').isEmpty) {
      return false;
    }
    return true;
  }
}
