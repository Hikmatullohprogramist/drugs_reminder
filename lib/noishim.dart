// import 'dart:io';

// void main() {
//   int n = 10;
//   for (int i = 0; i < n; i++) {
//     // N harfini chiqarish
//     for (int j = 0; j < n; j++) {
//       if (j == 0 || j == n - 1 || j == i) {
//         stdout.write('*');
//       } else {
//         stdout.write(' ');
//       }
//     }

//      stdout.write('    ');

//      for (int j = 0; j < n * 2; j++) {
//       if ((i == 0 && (j == 2 || j == 3 || j == 6 || j == 7)) ||
//           (i == 1 && (j == 1 || j == 4 || j == 5 || j == 8)) ||
//           (i == 2 && (j == 0 || j == 9)) ||
//           (i == 3 && (j == 0 || j == 9)) ||
//           (i == 4 && (j == 1 || j == 8)) ||
//           (i == 5 && (j == 2 || j == 7)) ||
//           (i == 6 && (j == 3 || j == 6)) ||
//           (i == 7 && (j == 4 || j == 5)) ||
//           (i > 7 && j == 4)) {
//         stdout.write('*');
//       } else {
//         stdout.write(' ');
//       }
//     }

//     stdout.writeln();
//   }
//   // Xabarni yozish
//   stdout.writeln();
//   stdout.writeln("Bu hayotda hech narsa siqilishga arzimedi !");
// }
import 'dart:io';

void main() {
  int n = 7; // Harflar o'lchami

  for (int i = 0; i < n; i++) {
    // N harfini chiqarish
    for (int j = 0; j < n; j++) {
      if (j == 0 || j == n - 1 || j == i) {
        stdout.write('*');
      } else {
        stdout.write(' ');
      }
    }

    // Bo'sh joy
    stdout.write('  ');

    // O harfini chiqarish
    for (int j = 0; j < n; j++) {
      if ((i == 0 || i == n - 1) && (j > 0 && j < n - 1) ||
          (j == 0 || j == n - 1) && (i > 0 && i < n - 1)) {
        stdout.write('*');
      } else {
        stdout.write(' ');
      }
    }

    // Bo'sh joy
    stdout.write('  ');

    // I harfini chiqarish
    for (int j = 0; j < n; j++) {
      if (i == 0 || i == n - 1 || j == n ~/ 2) {
        stdout.write('*');
      } else {
        stdout.write(' ');
      }
    }

    // Bo'sh joy
    stdout.write('  ');

    // L harfini chiqarish
    for (int j = 0; j < n; j++) {
      if (j == 0 || i == n - 1) {
        stdout.write('*');
      } else {
        stdout.write(' ');
      }
    }

    // Bo'sh joy
    stdout.write('  ');

    // A harfini chiqarish
    for (int j = 0; j < n; j++) {
      if (i == 0 && (j > 0 && j < n - 1) ||
          j == 0 && i > 0 ||
          j == n - 1 && i > 0 ||
          i == n ~/ 2) {
        stdout.write('*');
      } else {
        stdout.write(' ');
      }
    }

    stdout.writeln();
  }
}
