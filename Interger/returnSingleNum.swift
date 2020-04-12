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
        dict = (dict[i] ?? 0) + 1
    }
    
    for (key, val) in dict{
        if val < 2 {
        return key
        }
    }
    return 0
}

singleOneInArray(arr: [4,5,6,7,8,7,6,5,8])
