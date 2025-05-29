class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      int n = nums[i];

      for (int j = i + 1; j < nums.length; j++) {
        int n2 = nums[j];
        if (n + n2 == target) {
          return [i, j];
        }
      }
    }

    return [];
  }
}

void main() {
  final list = Solution().twoSum([3, 2, 4], 6);
  print(list);
}
