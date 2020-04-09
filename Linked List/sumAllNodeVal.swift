//Linked List class
class ListNode<T> {
    let val: T
    var next: ListNode<T>?
    init(val: T) {
        self.val = val
    }
}

// Here we create a function that takes in the head of a node and a closure.. the closure allows us to do something to
//each Node when traversing

func sumAllNodeVal<T>(_ node: ListNode<T>?, _ onVisit: (ListNode<T>) -> Void){
    guard let node = node else { return }
    onVisit(node)
    sumAllNodeVal(node.next, onVisit)
}


//Testing

var aNode = ListNode(val: 4)
var bNode = ListNode(val: 6)
var cNode = ListNode(val: 3)
var dNode = ListNode(val: 1)
var sum:Int = 0
aNode.next = bNode
bNode.next = cNode
cNode.next = dNode

sumAllNodeVal(aNode) { (node) in
    sum += node.val
}

print(sum)
