class Solution {
  int removeDuplicates(List<int> nums) {
    for (var i = 0; i < nums.length; i++) {
      final current = nums[i];

      for (var j = i + 1; j < nums.length; j++) {
        final next = nums[j];
        if (current == next) {
          nums.removeAt(j);
          if (j != 0) j--;
          if (i != 0) i--;
        }
      }
    }

    return nums.length;
  }
}

class Solution2 {
  int removeDuplicates(List<int> nums) {
    int i = 0;

    for (int j = 1; j < nums.length; j++) {
      if (nums[j] != nums[i]) {
        i++;
        nums[i] = nums[j];
      }
    }

    return i;
  }
}

void main() {
  final value = Solution2().removeDuplicates([1, 1, 2]);

  print(value);
}
