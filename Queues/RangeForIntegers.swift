/*
 Range for Integers in Queue
 
 Write a function that takes in a Queue of Ints, returns the range (difference between the minimum and maximum).
 
 Input:
 BACK 8 2 9 6 5 6 7 FRONT
 
 Output:
 7 (Because 9 -2 = 7)
 */
 
 // Brute force using while loop

 func rangeForInts(in queue: Queue<Int>) -> Int {
     var queue = queue
     var min = 0
     var max = 0
     guard !queue.isEmpty else { return 0 }
     guard queue.count != 1 else { return queue.front! }
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
