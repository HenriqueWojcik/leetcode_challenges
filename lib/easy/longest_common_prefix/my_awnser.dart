class Solution {
  String longestCommonPrefix(List<String> strs) {
    List<String> commonPrefix = strs.first.split('');

    for (var i = 1; i < strs.length; i++) {
      String actual = strs[i];

      commonPrefix = cleanCommonPrefix(commonPrefix, actual);

      for (var j = 0; j < actual.length; j++) {
        final letter = actual[j];
        if (j < commonPrefix.length && letter != commonPrefix[j]) {
          commonPrefix[j] = '';
        }
      }
    }

    String value = '';

    for (String element in commonPrefix) {
      if (element.isNotEmpty) {
        value += element;
      } else {
        break;
      }
    }

    return value;
  }

  List<String> cleanCommonPrefix(List<String> commonPrefix, String actual) {
    if (actual.length < commonPrefix.length) {
      for (var i = 0; i < commonPrefix.length; i++) {
        if (i + 1 > actual.length) {
          commonPrefix[i] = '';
        }
      }
    }

    return commonPrefix;
  }
}

void main() {
  final value = Solution().longestCommonPrefix(["cir", "car"]);

  print(value);
}
