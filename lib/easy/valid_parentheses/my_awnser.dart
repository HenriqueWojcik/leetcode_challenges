class Solution {
  bool isValid(String s) {
    try {
      if (s.length.isOdd) {
        return false;
      }

      List<Parentheses> parentheses = [];

      for (var i = 0; i < s.length; i++) {
        final value = s[i];
        if (value == '(') {
          parentheses.add(Parentheses(open: '(', close: ')'));
        } else if (value == '[') {
          parentheses.add(Parentheses(open: '[', close: ']'));
        } else if (value == '{') {
          parentheses.add(Parentheses(open: '{', close: '}'));
        } else {
          parentheses = validateParentheses(parentheses, value);
        }
      }

      return parentheses.where((element) => element.valid == false).isEmpty;
    } catch (_) {
      return false;
    }
  }

  List<Parentheses> validateParentheses(
    List<Parentheses> parentheses,
    String value,
  ) {
    var listTemp1 = parentheses.where(
      (element) => element.valid == false && element.close == value,
    );

    if (listTemp1.isEmpty) {
      throw Exception();
    }

    var listTemp = parentheses.where(
      (element) => element.valid == false,
    );

    var lastElementNotValid = listTemp.last;

    if (lastElementNotValid.close != value) {
      return parentheses;
    }

    if (lastElementNotValid.close == value) {
      lastElementNotValid.valid = true;
    }

    return parentheses;
  }
}

void main() {
  // final value = Solution().isValid('([}}])');
  final value = Solution().isValid('([)]');

  print(value);
}

class Parentheses {
  String open;
  String close;
  bool valid;
  Parentheses({
    required this.open,
    required this.close,
    this.valid = false,
  });
}
