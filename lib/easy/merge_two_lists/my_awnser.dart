class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    List<int> ints = [];

    ListNode? head1 = list1;
    ListNode? head2 = list2;

    while (head1 != null) {
      ints.add(head1.val);

      head1 = head1.next;
    }

    while (head2 != null) {
      ints.add(head2.val);

      head2 = head2.next;
    }

    ints.sort();

    return createLinkedList(ints);
  }
}

void main() {
  ListNode? list1 = createLinkedList([1, 2, 4]);
  ListNode? list2 = createLinkedList([1, 3, 4]);

  final value = Solution().mergeTwoLists(list1, list2);

  print(value);
}

ListNode? createLinkedList(List<int>? values) {
  if (values == null) {
    return null;
  }
  if (values.isEmpty) return null;
  ListNode head = ListNode(values.first);
  ListNode current = head;

  for (int i = 1; i < values.length; i++) {
    current.next = ListNode(values[i]);
    current = current.next!;
  }

  return head;
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
