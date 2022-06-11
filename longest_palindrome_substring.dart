import 'dart:io';

void main(List<String> args) {
  LongestPalindromeSubstring solution = LongestPalindromeSubstring();
  String str = stdin.readLineSync().toString();

  print(solution.longestPalindrome(str));
}

class LongestPalindromeSubstring {
  String longestPalindrome(String text) {
    if (text.length == 0) {
      return "";
    }

    int len = text.length;
    String maxStr = "";

    for (var i = 0; i < len; i++) {
      for (var j = i; j < len; j++) {
        if (_isValid(text, i, j)) {
          if (j - i + 1 > maxStr.length) {
            maxStr = text.substring(i, j + 1);
          }
        }
      }
    }

    return maxStr;
  }

  bool _isValid(String text, int lo, int hi) {
    int n = hi - lo + 1;

    for (var i = 0; i < n / 2; i++) {
      if (text.codeUnitAt(lo + i) != text.codeUnitAt(hi - i)) {
        return false;
      }
    }
    return true;
  }
}
