/*
 Move Zeroes
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 Example:
 Input: [0,1,0,3,12]
 Output: [1,3,12,0,0]
 */

 func moveZeroes(_ nums:[Int]) {
        var arr = [Int]()
        
        for v in nums{
            if v == 0 {
                arr.append(v)
            }
        }
        
        for i in nums.reversed() {
            if i != 0 {
                arr.insert(i, at: 0)
            }
        }
        
        print(arr)
    }

//#2

    func moveZeroes(_ nums:[Int], output:[Int] = []) {
        var input = nums
        var arr = [Int]()
        
        while !input.isEmpty {
            let currentVal = input.removeFirst()
            if currentVal == 0{
                arr.append(currentVal)
            }
            moveZeroes(input, output: arr)
        }
        
        for i in nums.reversed() {
            if i != 0 {
                arr.insert(i, at: 0)
            }
        }
        
        print(arr)
    }
