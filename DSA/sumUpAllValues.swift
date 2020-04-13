// Stack views
// adds and removes stuff that is *on top of each other *
// LIFO - last in, first out (the thing we just added will be what we remove)
// At a given time, we're ONLY interacting with one element in the stack (the "top" of the stack)

class Stack <T:Equatable>{
    private var element = [T]()
    // add things to the top

    func push(value: T){
        element.append(value)
    }
    // remove from the top
    func pop() -> T?{
        return element.popLast()
    }

    // look at the top

    func peek() -> T?{
        return element.last
    }

    // check if its empty and return bool

    func isEmpty()-> Bool{
        return element.isEmpty
    }
}

// Given a stack of Int, return the sum of all items values in the stacl
var stack = Stack<Int>()
stack.push(value: 3)
stack.push(value: 4)
stack.push(value: 8)
stack.push(value: 1)
stack.push(value: 4)
stack.push(value: 12)

print(stack)

func sumOfALL(stack:Stack<Int>)-> Int{
    var total:Int = 0
    var currentValue:Int!
    while !stack.isEmpty(){
        currentValue = stack.pop()
        total += currentValue
    }
    return total
}

let sum = sumOfALL(stack: stack)
print(sum)


// Sum of all values in a stack recursively
func sumOfAll(stack:Stack<Int>?, sum:Int = 0) -> Int?{
    guard let stack = stack else {return nil}
    var sum = sum
    
    while !stack.isEmpty() {
        sum += stack.pop()!
       return sumOfAll(stack: stack, sum: sum)
    }
   return sum
}

let sum = sumOfAll(stack: stack)
print(sum)
