void main(List<String> args) {
  CharactersSame charactersSame = CharactersSame();
  print(charactersSame.isAllCharactersSame("SsSS"));
  print(charactersSame.isAllCharactersSame("AAAA"));
}

class CharactersSame {
  bool isAllCharactersSame(String s) {
    for (var i = 1; i < s.length; i++) {
      if (s[0].codeUnitAt(0) != s[i].codeUnitAt(0)) {
        return false;
      }
    }

    return true;
  }
}
