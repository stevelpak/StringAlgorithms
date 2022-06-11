import 'utils.dart';

void main(List<String> args) {
  Upper upper = Upper();
  print(upper.toUpperCaseNew("abcAbs125"));
}

class Upper {
  String toUpperCaseNew(String text) {
    List<String> charText = text.split("").toList();

    for (var i = 0; i < charText.length; i++) {
      if (isLetter(charText[i].codeUnitAt(0)) &&
          isLowerCase(charText[i].codeUnitAt(0))) {
        charText[i] = charText[i].toUpperCase();
      }
    }

    return charText.join();
  }
}
