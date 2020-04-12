// Given a non-empty array of integers, every element appears twice except for one. Find that single one.
 
// Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 
 //input : [4,5,6,7,8,7,6,5,8]
 //output: 4

func singleOneInArray(arr:[Int])-> Int{
    var dict:[Int:Int] = [:]
    for i in arr{
        if let value = dict[i]{
        dict[i] = value + 1
        } else {
            dict[i] = 1
        }
    }
    
    for (key, val) in dict{
        if val < 2 {
        return key
        }
    }
    return 0
}

singleOneInArray(arr: [4,5,6,7,8,7,6,5,8])

// Solving it without adding anything extra to memory except the dictionary
func singleOneInArray(arr:[Int])-> Int{
    var dict:[Int:Int] = [:]
    for i in arr{
        dict[i] = (dict[i] ?? 0) + 1
    }
    
    for (key, val) in dict{
        if val < 2 {
        return key
        }
    }
    return 0
}

singleOneInArray(arr: [4,5,6,7,8,7,6,5,8])


//Solving it recursively
// By assigning a value to a parameter, it is not required during a function call. this allows for a recursive method
// where you can call itself and pass in the values (Dict) but not required to pass it in when u call it at the end
func singleOneInArray(arr:[Int], dict:[Int:Int] = [Int:Int]()) -> [Int:Int]{
    var dict:[Int:Int] = dict
    var arr = arr
    while !arr.isEmpty{
      let num =  arr.remove(at: 0)
        dict[num] = (dict[num] ?? 0) + 1
    return singleOneInArray(arr: arr, dict: dict)
    }
    return dict
}

func returnSingleInt(dict:[Int:Int]) -> Int{
    for (key, val) in dict{
        if val < 2 {
        return key
        }
    }
    return 0
}

let dict = singleOneInArray(arr: [4,5,6,7,8,7,6,5,8])
returnSingleInt(dict: dict)
