//Given a linked list, determine if it has a cycle in it.
//To represent a cycle in the given linked list, we use an integer pos which represents the position (0-indexed) in the linked list where tail connects to. If pos is -1, then there is no cycle in the linked list.

//Example 1:
//Input: head = [3,2,0,-4], pos = 1
//Output: true
//Explanation: There is a cycle in the linked list, where tail connects to the second node.


//Essentially we are trying to see if the linked list loops back around into a cycle
// the goal is to continue the check with a slow and fast veriable.. the slow will jump one at a time while the fast will jump
//2 at a time. And eventually if the linked list is in a cycle, then the slow and fast will eventually be the same and we can
// return true.. But if the condition is met before going into the (if) statement, then we know its false.

func hasCycle(_ head: ListNode?) -> Bool {
    guard head  != nil else {return false}
    guard head?.next?.val != nil else {return false}
    var slow = head
    var fast = head
    
    while fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        
        if slow?.val == fast?.val {
            return true
        }
    }
    return false
}
