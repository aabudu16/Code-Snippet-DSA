//Given a non-empty, singly linked list with head node head, return a middle node of linked list.
//If there are two middle nodes, return the second middle node.

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
 
 // we solve this problem recursively to keep the run time O(n)
 
 // we create a func to find the count of the linkedList
 func nodeCount(startingAt head: ListNode?) -> Int {
    guard let head = head else { return 0 }
    return 1 + nodeCount(startingAt: head.next)
}

//we write a func to get us a node at index and use a condition to tell us when to stop and return the Node
func getNode(atIndex n: Int, startingAt head: ListNode?) -> ListNode? {
    guard let head = head else { return nil }
    guard n != 0 else { return head }
    return getNode(atIndex: n - 1, startingAt: head.next)
}

// this func bring the entire logic together.. it gets the count of the LL, then we divide the count in half and pass that 
// value into the getNode func, and return the Node when the condition has been met
 func middleNode(_ head: ListNode?) -> ListNode? {
    let count = nodeCount(startingAt: head)
    return getNode(atIndex: count / 2, startingAt: head)
}
