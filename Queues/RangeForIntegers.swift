/*
 Range for Integers in Queue
 
 Write a function that takes in a Queue of Ints, returns the range (difference between the minimum and maximum).
 
 Input:
 BACK 8 2 9 6 5 6 7 FRONT
 
 Output:
 7 (Because 9 -2 = 7)
 */
 
class Queue<Int>{
    private var containerArray:Array = [Int]()
    
    func enqueue(value: Int){
        containerArray.append(value)
    }
    
    func dequeue()-> Int?{
        return containerArray.removeFirst()
    }
    
    func arrayCount() -> Int{
        return containerArray.count as! Int
    }
    
    func isEmpty() -> Bool {
        return containerArray.isEmpty
    }

 func rangeForInts(in queue: Queue<Int>) -> Int {
     let queue = queue
     var min = 0
     var max = 0
     let arrayCounnt = queue.arrayCount()
     guard !queue.isEmpty() else { return 0 }
     guard arrayCounnt >= 2 else {return queue.dequeue()!}
     let firstInt = queue.dequeue()!
     let secondInt = queue.dequeue()!
     if firstInt < secondInt {
         min = firstInt
         max = secondInt
     } else {
         min = secondInt
         max = firstInt
     }
     while !queue.isEmpty {
         let currentInt = queue.dequeue()!
         if currentInt < min {
             min = currentInt
         } else if currentInt > max {
             max = currentInt
         }
     }
     return max - min
 }
var myQueue = Queue<Int>()

myQueue.enqueue(7)
myQueue.enqueue(6)
myQueue.enqueue(5)
myQueue.enqueue(6)
myQueue.enqueue(9)
myQueue.enqueue(2)
myQueue.enqueue(8)

rangeForInts(in: myQueue)
