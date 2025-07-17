class Solution {
  int pivotIndex(List<int> nums) {
    int total = nums.reduce((a, b) => a + b);
    int leftSum = 0;

    for (int i = 0; i < nums.length; i++) {
      final n = nums[i];
      leftSum += n;

      final v = (total - leftSum) - (leftSum - n);

      if (v == 0) {
        return i;
      }
    }

    return -1;
  }
}

void main() {
  final value = Solution().pivotIndex([-1, -1, -1, -1, -1, 0]);

  print(value);
}
