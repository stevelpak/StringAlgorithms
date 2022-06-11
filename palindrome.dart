void main(List<String> args) {
  Palindrome palindrome = Palindrome();
  print(palindrome.isPalindrome("kiyik"));
  print(palindrome.isPalindrome("akula"));
  print(palindrome.isPalindromeRecursion("tevet"));
  print(palindrome.isPalindromeRecursion("Steven"));
  print(palindrome.isPalindromeOne("aziza"));
  print(palindrome.isPalindromeOne("Laziza"));
}

class Palindrome {
  bool isPalindrome(String text) {
    return (text.length <= 1 ||
        (text == (text.split("").toList().reversed).join()));
  }

  bool isPalindromeRecursion(String text) {
    if (text.length <= 1) {
      return true;
    }

    if (text.codeUnitAt(0) != text.codeUnitAt(text.length - 1)) {
      return false;
    }
    return isPalindrome(text.substring(1, text.length - 1));
  }

  bool isPalindromeOne(String text) {
    if (text.length <= 1) {
      return true;
    }

    for (var i = 0, j = text.length - 1; i < j; i++, j--) {
      if (text.codeUnitAt(i) != text.codeUnitAt(j)) {
        return false;
      }
    }
    return true;
  }
}
