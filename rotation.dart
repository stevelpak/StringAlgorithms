void main(List<String> args) {
  Rotation rotationNew = Rotation();
  print(rotationNew.rotation("akasalom", 3));
  rotationNew.rotationTwo("akasalom".split("").toList(), 3);
}

class Rotation {
  String rotation(String text, int n) {
    return text.substring(n) + text.substring(0, n);
  }

  void rotationTwo(List<String> values, int n) {
    reverse(values, 0, n - 1);
    reverse(values, n, values.length - 1);
    reverse(values, 0, values.length - 1);

    print(values.join());
  }

  void reverse(List<String> values, int from, int to) {
    while (from < to) {
      String temp = values[from];
      values[from] = values[to];
      values[to] = temp;
      from++;
      to--;
    }
  }
}
