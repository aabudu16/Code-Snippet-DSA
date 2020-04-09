Question: The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
Given two integers x and y, calculate the Hamming distance.
Note:
0 ≤ x, y < 231.
Example:
Input: x = 1, y = 4
Output: 2
Explanation:
1   (0 0 0 1)
4   (0 1 0 0)
       ↑   ↑
The above arrows point to positions where the corresponding bits are different.


func hammingDistance(_ x: Int , _ y: Int) -> Int {
    let difference = x ^ y //xor operator gives you an Int whos binary represents the differences in powers of 2 (ie each 1 in the sequence is a difference)
    
    //turn the difference into a string binary number and filter out all the 1 values. Count the remaning array
    let result = String(difference, radix: 2, uppercase: false).filter { $0 == "1" }.count
    return result
}


func hammingDistance(_ x: Int , _ y: Int) -> Int {
    let difference = x ^ y //xor operator gives you an Int whos binary represents the differences in powers of 2 (ie each 1 in the sequence is a difference)
    
    return difference.nonzeroBitCount //outputs all the nonzeros in the binary sequence
}



func hammingDistance(_ x: Int , _ y: Int) -> Int {
    var difference = x ^ y //xor operator gives you an Int whos binary represents the differences in powers of 2 (ie each 1 in the sequence is a difference)
    
    var counter = 0 //track the number of differences
    
    
    
    while difference > 0 { // loop until difference is 0 in value
    
        let output = difference & 1 //Bitwise AND (single &) compares two binary numbers and outputs 1 for every power of 2 they have in common with one in it. Given that, compare it to 1 so you are only evaluating the last number in the chain
        
        if output != 0 { counter += 1} //if 1, update counter
        
        difference = difference >> 1 //reassign difference to old difference shifted to the right 1 value
    }
    
    return counter
}
