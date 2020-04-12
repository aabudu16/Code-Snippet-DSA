// Write a function that removes nodes with duplicate Integer values from an linked lists


// recursively to grab all the values from the LinkedList

/*
This First approach grabs all the values from the LL recursively and inserts them into a Set. 
Then we turn the set into an Array. looping through the Array, we remove the item from index 0 
and creates a Node and asign that node to the previous Node while assigning the head 
to the newly created Node
*/

func removeDuplicates(linkL:LL?, set:Set<Int> = Set<Int>()) -> LL?{
    var mySet:Set = set

    while linkL != nil {
        mySet.insert(linkL!.val)
       return removeDuplicates(linkL: linkL?.next, set: mySet)
    }

    var newArr = Array(mySet)
    var first:LL?
    var head:LL?

    while !newArr.isEmpty {
        if let unWrappedHead = head {
            let ll = LL(newArr.remove(at: 0))
            unWrappedHead.next = ll
            head = ll
        }else {
            head = LL(newArr.remove(at: 0))
            first = head
        }
    }
    return first
}

removeDuplicates(linkL: one)
