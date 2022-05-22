String getNewPassword(String O) {
  var y = O;

  bool containsUppercaseLetter = false;
  bool containsLowercaseLetter = false;
  bool containsDigit = false;
  bool containsSpecialCharacter = false;

  for (final codeUnit in y.codeUnits) {
    if (codeUnit >= 65 && codeUnit <= 90) {
      containsUppercaseLetter = true;
    } else if (codeUnit >= 97 && codeUnit <= 122) {
      containsLowercaseLetter = true;
    } else if (codeUnit >= 48 && codeUnit <= 57) {
      containsDigit = true;
    } else if (codeUnit == 35 ||
        codeUnit == 64 ||
        codeUnit == 42 ||
        codeUnit == 38) {
      containsSpecialCharacter = true;
    }

    if (containsUppercaseLetter &&
        containsLowercaseLetter &&
        containsDigit &&
        containsSpecialCharacter) {
      continue;
    }
  }

  if (!containsUppercaseLetter) {
    y += "A";
  }

  if (!containsLowercaseLetter) {
    y += "a";
  }

  if (!containsDigit) {
    y += "1";
  }

  if (!containsSpecialCharacter) {
    y += "#";
  }

  if (y.length < 7) {
    y += "A" * (7 - y.length);
  }

  return y;
}
