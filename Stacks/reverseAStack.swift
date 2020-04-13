// Given a Stack of intergers, return the stack in a reversed order


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

func reverseAStack(stack:Stack<Int>?) -> Stack<Int>? {
    guard let stack = stack else {return nil}
    let reversedStack = Stack<Int>()
    
    while !stack.isEmpty() {
        reversedStack.push(value: stack.pop()!)
    }
    return reversedStack
}

reverseAStack(stack: stack)
