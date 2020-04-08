//implement a queue of Ints that has the methods enqueue, dequeue and a method min that returns the smallest element currently in the queue

class Queue<Int>{
  private var containerArray:Array = [Int]()

func enqueue(value: Int){
  containerArray.append(value)
}

func dequeue()-> Int?{
 return containerArray.removeFirst()
}

func returnSmallestElement()-> Int?{
guard !containerArray.isEmpty else {return nil}
var holder:Int = containerArray[0]
for value in containerArray {
if holder > value {
  holder = value
}
}
return holder
}
}

let arr = [2,5,6,1,9]
