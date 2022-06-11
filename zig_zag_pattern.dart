void main(List<String> args) {
  ZigZagPattern solution = ZigZagPattern();
  print(solution.encode("123456789", 3));
}

class ZigZagPattern {
  String encode(String text, int numRows) {
    if (numRows < 2 || text.length < numRows) {
      return text;
    }

    int start = 0, index = 0, height = 1, depth = numRows;
    List<String> zigZagedArr = List.filled(text.length, "zig-zag");

    while (depth != 0) {
      int pointer = start,
          height_space = 2 + ((height - 2) * 2),
          depth_space = 2 + ((depth - 2) * 2);
      bool result = true;

      while (pointer < text.length) {
        zigZagedArr[index++] = text[pointer];

        if (height_space == 0) {
          pointer += depth_space;
        } else if (depth_space == 0) {
          pointer += height_space;
        } else if (result) {
          pointer += depth_space;
          result = false;
        } else {
          pointer += height_space;
          result = true;
        }
      }
      height++;
      depth--;
      start++;
    }
    return zigZagedArr.join();
  }
}
