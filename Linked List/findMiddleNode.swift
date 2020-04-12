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

// Doing everything in one func.. run time is O(n) 

func findMiddleNode(head:ListNode?) -> Int? {
    guard head != nil else {return nil}
    guard head?.next != nil else {return head?.val}
    
    var count = 0
    var currentNode = head
    while currentNode?.next != nil{
       count += 1
        currentNode = currentNode?.next
    }
    
    var middleIndex:Int = count / 2
    
    currentNode = head
    
    while middleIndex > 0 {
        currentNode = currentNode?.next
        middleIndex -= 1
    }
    
    return currentNode?.val
}

let one = ListNode(1)
let two = ListNode(2)
let three = ListNode(3)
let four = ListNode(4)
let five = ListNode(5)
let six = ListNode(6)
let seven = ListNode(7)
let eight = ListNode(8)
let nine = ListNode(9)

one.next = two
two.next = three
three.next = four
four.next = five
five.next = six
six.next = seven
seven.next = eight
eight.next = nine

// one is head

findMiddleNode(head: one)
