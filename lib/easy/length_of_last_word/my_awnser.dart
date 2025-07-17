class Solution {
  int lengthOfLastWord(String s) {
    return s.trimLeft().trimRight().split(' ').last.length;
  }
}

void main() {
  final value = Solution().lengthOfLastWord('Hello World');

  print(value);
}
