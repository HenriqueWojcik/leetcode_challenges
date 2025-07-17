class Solution {
  List<int> plusOne(List<int> digits) {
    var list = <int>[];
    int carry = 1;

    for (int i = digits.length - 1; i >= 0; --i) {
      int n = digits[i] + carry;

      if (n == 10) {
        list.insert(0, 0);
        carry = 1;
      } else {
        list.insert(0, n);
        carry = 0;
      }
    }

    if (carry == 1) {
      list.insert(0, 1);
    }

    return list;
  }
}

void main() {
  final value = Solution().plusOne([9]);

  print(value);
}
