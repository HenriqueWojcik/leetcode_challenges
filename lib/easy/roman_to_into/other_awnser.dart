class Solution {
  int romanToInt(String s) {
    final Map<String, int> romanValues = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };
    int total = 0;

    for (int i = 0; i < s.length; i++) {
      final current = romanValues[s[i]]!;
      int? next = i + 1 < s.length ? romanValues[s[i + 1]] : null;

      if (next != null && current < next) {
        total -= current;
      } else {
        total += current;
      }
    }

    return total;
  }
}

void main() {
  final value = Solution().romanToInt('III');
  print(value);
}
