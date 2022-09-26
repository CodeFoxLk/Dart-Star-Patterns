import 'dart:io';

void main(List<String> args) {
  _sandglassPattern();
}

void _rightTriangleStarPattern() {
  const rows = 5;
  for (var i = 0; i <= rows; i++) {
    for (var j = 0; j < i; j++) {
      stdout.write('*');
    }
    stdout.writeln();
  }
}

void _rightTriangleStarPatternEzy() {
  const rows = 5;
  for (var i = 0; i <= rows; i++) {
    print('*' * i);
  }
}

void _leftTriangleStarPattern() {
  const rows = 5;
  const columns = rows;
  for (var i = 0; i <= rows; i++) {
    for (var j = 0; j < columns; j++) {
      if (j >= columns - i) {
        stdout.write('*');
      } else {
        stdout.write(' ');
      }
    }
    stdout.writeln();
  }
}

void _leftTriangleStarPatternEzy() {
  const rows = 5;
  const columns = rows;
  for (var i = 0; i <= rows; i++) {
    stdout.write(' ' * (columns - i));
    stdout.write('*' * i);
    stdout.writeln();
  }
}

void _leftTriangleStarPattern2() {
  int rows = 6;
  for (int i = 0; i < rows; i++) {
    for (int j = (rows - i); j >= 1; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("*");
    }
    stdout.writeln();
  }
}

void _pyramidEzy() {
  int rows = 6;
  for (int i = 0; i < rows; i++) {
    stdout.write(" " * (rows - i));
    stdout.write("* " * i);
    stdout.writeln();
  }
}

void _pyramid() {
  int rows = 6;
  for (int i = 0; i < rows; i++) {
    for (int j = (rows - i); j >= 1; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}

void _diamondShapePattern() {
  int rows = 10;
  int columns = (rows / 2).ceil();

  for (int i = 0; i < rows / 2; i++) {
    for (int j = (columns - i); j >= 1; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }

  for (int i = 0; i <= rows / 2; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write(" ");
    }
    for (int j = 0; j <= columns - i; j++) {
      stdout.write("* ");
    }

    stdout.writeln();
  }
}

void _diamondShapePatternEzy() {
  int rows = 10;
  int columns = (rows / 2).ceil();

  for (int i = 0; i < rows / 2; i++) {
    stdout.write(" " * (columns - i));
    stdout.write("* " * i);
    stdout.writeln();
  }

  for (int i = 0; i <= rows / 2; i++) {
    stdout.write(" " * i);
    stdout.write("* " * (columns - i));
    stdout.writeln();
  }
}

void _downwardTriangleStarPattern() {
  int rows = 6;
  int columns = rows;
  for (int i = 0; i <= rows; i++) {
    for (int j = columns; j > i; j--) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}

void _downwardTriangleStarPatternEzy() {
  int rows = 6;
  for (int i = 0; i <= rows; i++) {
    print("* " * (rows - i));
  }
}

void _reversePyramidPattern() {
  int rows = 6;
  int columns = rows;

  for (int i = 0; i <= rows; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write(" ");
    }

    for (int j = columns; j > i; j--) {
      stdout.write(" *");
    }

    stdout.writeln();
  }
}

void _reversePyramidPatternEzy() {
  int rows = 6;

  for (int i = 0; i <= rows; i++) {
    stdout.write(" " * i);
    stdout.write(" *" * (rows - i));
    stdout.writeln();
  }
}

void _rightPascasTriangle() {
  int rows = 10;
  int columns = (rows / 2).ceil();

  for (int i = 0; i < rows / 2; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }

  for (int i = 0; i <= rows / 2; i++) {
    for (int j = 0; j <= columns - i; j++) {
      stdout.write("* ");
    }

    stdout.writeln();
  }
}

void _rightPascasTriangleEzy() {
  int rows = 10;

  for (int i = 0; i < rows / 2; i++) {
    stdout.write("* " * i);
    stdout.writeln();
  }

  for (int i = 0; i <= rows / 2; i++) {
    stdout.write("* " * (rows ~/ 2 - i));
    stdout.writeln();
  }
}

_leftPascasTriangle() {
  int rows = 10;
  int columns = (rows / 2).ceil();

  for (int i = 0; i < rows / 2; i++) {
    for (int j = columns; j > i; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("*");
    }
    stdout.writeln();
  }

  for (int i = 0; i <= rows / 2; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write(" ");
    }
    for (int j = 0; j <= columns - i; j++) {
      stdout.write("*");
    }

    stdout.writeln();
  }
}

_leftPascasTriangleEzy() {
  int rows = 10;

  for (int i = 0; i < rows / 2; i++) {
    stdout.write(" " * (rows ~/ 2 - i));
    stdout.write("*" * i);
    stdout.writeln();
  }

  for (int i = 0; i < rows / 2; i++) {
    stdout.write(" " * i);
    stdout.write("*" * (rows ~/ 2 - i));
    stdout.writeln();
  }
}

void _sandglassPattern() {
  int rows = 10;
  int columns = (rows / 2).ceil();
  for (int i = 0; i < rows / 2; i++) {
    for (var j = 0; i > j; j++) {
      stdout.write(" ");
    }
    for (var j = columns; i < j; j--) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
  for (int i = 0; i <= rows / 2; i++) {
    for (var j = columns; i < j; j--) {
      stdout.write(" ");
    }

    for (var j = 0; j < i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}

void _sandglassPatternEzy() {
  int rows = 10;
  for (int i = 0; i < rows / 2; i++) {
    stdout.write("* " * ((rows ~/ 2) - i));
    stdout.write(" " * i);
    stdout.writeln();
  }
  for (int i = 0; i < rows / 2; i++) {
    stdout.write(" " * ((rows ~/ 2) - i));
    stdout.write("* " * i);
    stdout.writeln();
  }
}
