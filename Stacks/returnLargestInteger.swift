// Return the largest integer in a stack

 //run time of O(n)
 
 class Stack <T>{
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
stack.push(value: 20)
stack.push(value: 1)
stack.push(value: 4)
stack.push(value: 12)
stack.push(value: 6)


func returnLargestInteger(from stack:Stack<Int>?) -> Int?{
    guard let stack = stack else {return nil}

    var largestNum:Int = Int.min
    var currentNum:Int

    while !stack.isEmpty(){
        currentNum = stack.pop()!

        if currentNum > largestNum {
           largestNum = currentNum
        }
    }
    return largestNum
}

returnLargestInteger(from: stack)
