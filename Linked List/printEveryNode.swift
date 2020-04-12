
// given a Linked List, print out every node value
class Node<Int> {
    let value:Int
    var next: Node<Int>?
    
    init(value: Int){
        self.value = value
    }
}


// Printing out each Node value using a closure
func printEachNode(_ node: Node<Int>?, onVisit: (Node<Int>) -> Void) {
    guard let node = node else { return }
    
    onVisit(node)
    printEachNode(node.next, onVisit: onVisit)
}


let one = Node(value: 1)
let two = Node(value: 2)
let three = Node(value: 3)
let four = Node(value: 4)
let five = Node(value: 5)
let six = Node(value: 6)
let seven = Node(value: 7)
let eight = Node(value: 8)
let nine = Node(value: 9)

one.next = two
two.next = three
three.next = four
four.next = five
five.next = six
six.next = seven
seven.next = eight
eight.next = nine

printEachNode(one) { (node) in
    print(node.value)
}
