import 'utils.dart';

void main(List<String> args) {
  Lower lower = Lower();
  print(lower.toLowerCaseNew("sALoMVar23"));
}

class Lower {
  String toLowerCaseNew(String text) {
    List<String> charText = text.split("").toList();

    for (var i = 0; i < charText.length; i++) {
      if (isLetter(charText[i].codeUnitAt(0)) &&
          isUpperCase(charText[i].codeUnitAt(0))) {
        charText[i] = charText[i].toLowerCase();
      }
    }

    return charText.join();
  }
}
