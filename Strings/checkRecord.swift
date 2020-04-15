/*
You are given a string representing an attendance record for a student. The record only contains the following three characters:
'A' : Absent.
'L' : Late.
'P' : Present.
A student could be rewarded if his attendance record doesn't contain more than one 'A' (absent) or more than two continuous 'L' (late).

You need to return whether the student could be rewarded according to his attendance record.

Example 1:

Input: "PPALLP"
Output: True
Example 2:

Input: "PPALLL"
Output: False
*/

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

    func checkRecord(_ s: String) -> Bool {
    let stack = Stack<Character>()
   var counter = 0
    var first:Character? = nil
    var second:Character? = nil
    var third:Character? = nil
    for char in s {
        if char == Character("A"){
            counter += 1
        }
        stack.push(value: char)
    }
    
    if counter > 1 {
        return false
    }else {
        
        while !stack.isEmpty(){
           first = second
            second = third
            third = stack.pop()!
            
            if first == second && second == third && first == Character("L"){
                return false
            }
        }
    }
    
  return true
}
