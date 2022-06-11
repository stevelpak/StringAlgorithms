void main(List<String> args) {
  CheckVowels checkVowels = CheckVowels();
  print(checkVowels.hasVowels("Steve"));
}

class CheckVowels {
  final List<String> VOWELS = ['a', 'i', 'e', 'o', 'u'];

  bool hasVowels(String input) {
    return countVowels(input) > 0;
  }

  int countVowels(String input) {
    int count = 0;

    List<String> charText = input.toLowerCase().split('');

    for (String element in charText) {
      if (VOWELS.contains(element)) {
        count++;
      }
    }

    return count;
  }
}
