void main(List<String> args) {
  Permute permute = Permute();
  String str = "ABC";
  int len = str.length;

  permute.generatePermutation(str, 0, len);
}

class Permute {
  String swapString(String text, int i, int j) {
    List<String> charList = text.split("").toList();
    String ch = charList[i];
    charList[i] = charList[j];
    charList[j] = ch;
    return charList.join();
  }

  void generatePermutation(String text, int start, int end) {
    if (start == end - 1) {
      print(text);
    } else {
      for (var i = start; i < end; i++) {
        text = swapString(text, start, i);

        generatePermutation(text, start + 1, end);

        text = swapString(text, start, i);
      }
    }
  }
}
