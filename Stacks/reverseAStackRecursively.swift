// Stack views
// adds and removes stuff that is *on top of each other *
// LIFO - last in, first out (the thing we just added will be what we remove)
// At a gigven time, we're ONLY interacting with one element in the stack (the "top" of the stack)

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

var stack = Stack<Int>()
stack.push(value: 3)
stack.push(value: 4)
stack.push(value: 8)
stack.push(value: 1)
stack.push(value: 4)
stack.push(value: 12)


func reverseAStack(stack:Stack<Int>?, newStack:Stack<Int> = Stack<Int>()) -> Stack<Int>? {
    guard let stack = stack else {return nil}
    let newStack = newStack
    
    while !stack.isEmpty() {
        newStack.push(value: stack.pop()!)
        return reverseAStack(stack: stack, newStack: newStack)
    }
    return newStack
}

let newStack = reverseAStack(stack: stack)
