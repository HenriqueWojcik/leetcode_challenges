import 'dart:math';

class Solution {
  bool isPalindrome(int x) {
    final number = x;
    List<int> numbers = [];

    while (x > 0) {
      int n = x % 10;
      numbers.add(n);
      x = x ~/ 10;
    }

    num sum = 0;

    for (int i = 1; i <= numbers.length; i++) {
      final n = numbers[i - 1];
      final p = i == numbers.length ? 1 : pow(10, numbers.length - i);
      sum = sum + (n * p);
    }

    return sum == number;
  }
}

void main() {
  final value = Solution().isPalindrome(12131);

  print(value);
}
