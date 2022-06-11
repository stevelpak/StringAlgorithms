void main(List<String> args) {
  Reverse reverse = Reverse();
  print(reverse.reverseString("Hello, Steve!"));
}

class Reverse {
  reverseString(String text) {
    if (text.isEmpty) {
      return text;
    }

    List charText = text.split('');

    for (var i = 0, j = charText.length - 1; i < j; i++, j--) {
      String temp = charText[i];
      charText[i] = charText[j];
      charText[j] = temp;
    }

    return charText.join();
  }
}
