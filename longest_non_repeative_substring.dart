import 'dart:collection';

void main(List<String> args) {
  Longest longest = Longest();
  print(longest.lengthOfThis("Hello"));
}

class Longest {
  int lengthOfThis(String text) {
    int max = 0, start = 0, i = 0;
    HashMap<String, int> map = HashMap();

    while (i < text.length) {
      String temp = text[i];

      if (!map.containsKey(temp)) {
        map.putIfAbsent(temp, () => 0);
      } else if (text[start] == temp) {
        start++;
      } else if (text[i - 1] == temp) {
        if (max < map.length) {
          map = HashMap();
          start = i;
          i--;
        }
      } else {
        if (max < map.length) {
          max = map.length;
        }
        while (text[start] != temp) {
          map.remove(text[start]);
          start++;
        }

        start++;
      }

      i++;
    }
    if (max < map.length) {
      max = map.length;
    }

    return max;
  }
}
