import 'dart:math';

class HomeViewModel {
  int randomValue({int? value}) => Random().nextInt(value ?? 100);

  bool isPrime(int? value) {
    if (value! <= 1) return false;
    var isFound = 0;
    for (var i = 1; i <= sqrt(value).floor(); i++) {
      if (value % i == 0) isFound++;
      if (isFound > 1) return false;
    }

    return true;
  }
}
