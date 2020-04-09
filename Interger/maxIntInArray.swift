//Using Swift Array Methods
//O(n)
func maxInt(in arr: [Int]) -> Int? {
   return arr.max()
}

//Using a variable to keep track
//O(n)
func maxInt(in arr: [Int]) -> Int? {
    guard !arr.isEmpty else { return nil }
    var max = Int.min
    arr.forEach { if max < $0 { max = $0 } }
    return max
}
