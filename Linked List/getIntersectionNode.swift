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
    // Assign both LL to variables
    var firstLL = headA
    var secondLL = headB
    var difference = 0
    // Get the count of firstLL
    while firstLL != nil {
        headACount += 1
        firstLL = firstLL?.next
    }
     // Get the count of secondLL
    while secondLL != nil {
        headBCount += 1
        secondLL = secondLL?.next
    }
    // Check which linked list is greater and assign the firstLL varible to the larger LL and the secondLL to the smallerLL
    //and get the diff btw the LL count
    if headACount > headBCount {
        firstLL = headA
        secondLL = headB
        difference = headACount - headBCount
    }else if headBCount > headACount{
        firstLL = headB
        secondLL = headA
        difference = headBCount - headACount
    }
    // use the difference to move the firstLL pointer to the same as the secondLL
    while difference > 0 {
        firstLL = firstLL?.next
        difference -= 1
    }
    
    // We keep shifting until the Nodes are equal
    // you cant compare 2 Nodes together with the (== or !=) but we can with (=== or !==)
    while firstLL !== secondLL {
        firstLL = firstLL?.next
        secondLL = secondLL?.next
    }
    
  return firstLL
}

}
