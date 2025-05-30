class Solution {
  int romanToInt(String s) {
    final Map<String, int> romanValues = {
      'I': 1,
      'IV': 4,
      'V': 5,
      'IX': 9,
      'X': 10,
      'XL': 40,
      'L': 50,
      'XC': 90,
      'C': 100,
      'CD': 400,
      'D': 500,
      'CM': 900,
      'M': 1000,
    };

    int total = 0;

    List<String> numerals = s.split('');

    for (int i = 0; i < numerals.length; i++) {
      final roman = numerals[i];
      final actualNumber = romanValues[roman];

      if (i + 1 == numerals.length) {
        total = total + actualNumber!;
      } else {
        final nextRoman = numerals[i + 1];
        final nextNumber = romanValues[nextRoman];

        if (nextNumber! > actualNumber!) {
          total = total + romanValues['$roman$nextRoman']!;
          i++;
        } else {
          total = total + actualNumber;
        }
      }
    }

    return total;
  }
}

void main() {
  final value = Solution().romanToInt('MCMXCIV');
  print(value);
}
