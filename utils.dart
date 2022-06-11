bool isLowerCase(int codeUnit) => (codeUnit >= 97 && codeUnit <= 122);

bool isUpperCase(int codeUnit) => (codeUnit >= 65 && codeUnit <= 90);

bool isLetter(int codeUnit) =>
    (codeUnit >= 97 && codeUnit <= 122 || codeUnit >= 65 && codeUnit <= 90);
