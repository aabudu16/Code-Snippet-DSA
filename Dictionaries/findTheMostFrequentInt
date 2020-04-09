//Find the most frequent interger in a given Array

func mostFrequentInt(in arr: [Int]) -> Int? {
    guard !arr.isEmpty else { return nil }
    var frequencyDictionary = [Int:Int]()
    for i in arr {
        if let frequency = frequencyDictionary[i] {
            frequencyDictionary[i] = frequency + 1
        } else {
            frequencyDictionary[i] = 1
        }
    }
    
    var mostFrequentVal = 0
    var currentHighest = 0
    
    for pair in frequencyDictionary {
        if pair.value > currentHighest {
            currentHighest = pair.value
            mostFrequentVal = pair.key
        }
    }
    return mostFrequentVal
}
