import 'utils.dart';

void main(List<String> args) {
  Alphabetical alphabetical = Alphabetical();

  print(!alphabetical.result("123abc"));
  print(alphabetical.result("aBC"));
  print(alphabetical.result("abc"));
  print(!alphabetical.result("xyzabc"));
  print(alphabetical.result("abcxyz"));
}

class Alphabetical {
  bool result(String s) {
    s = s.toLowerCase();
    int char;

    for (int i = 0; i < s.length - 1; ++i) {
      char = s[i].codeUnitAt(0);

      if (!isLetter(char) || !(char <= s[i + 1].codeUnitAt(0))) {
        return false;
      }
    }
    return true;
  }
}
