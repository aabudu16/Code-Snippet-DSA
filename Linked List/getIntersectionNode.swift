//Write a program to find the node at which the intersection of two singly linked lists begins.

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    
    guard headA != nil || headB != nil else {return nil}
    
    var headACount = 0
    var headBCount = 0
    
    var firstLL = headA
    var secondLL = headB
    var difference = 0
    
    while firstLL != nil {
        headACount += 1
        firstLL = firstLL?.next
    }
    
    while secondLL != nil {
        headBCount += 1
        secondLL = secondLL?.next
    }
    
    if headACount > headBCount {
        firstLL = headA
        secondLL = headB
        difference = headACount - headBCount
    }else if headBCount > headACount{
        firstLL = headB
        secondLL = headA
        difference = headBCount - headACount
    }
    
    while difference > 0 {
        firstLL = firstLL?.next
        difference -= 1
    }
    
    // you cant compare 2 Nodes together with the (== or !=) but we can with (=== or !==)
    while firstLL !== secondLL {
        firstLL = firstLL?.next
        secondLL = secondLL?.next
    }
    
  return firstLL
}

}
