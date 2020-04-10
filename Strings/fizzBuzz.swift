func fizzBuzz(_ n: Int) -> [String] {
        // Solution: Declarative, with each condition spelled out
         var solution = [String]()
        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0 {
                solution.append("FizzBuzz")
            } else if i % 3 == 0 {
                solution.append("Fizz")
            } else if i % 5 == 0 {
                solution.append("Buzz")
            } else {
                solution.append(String(i))
            }
        }
         return solution
        
        
       // Solution: 1-line map
       func fizzBuzz(_ n: Int) -> [String] {
        return Array(1...n).map{ ($0 % 5 == 0 && $0 % 3 == 0) ? "FizzBuzz" : $0 % 5 == 0 ? "Buzz" : $0 % 3 == 0 ? "Fizz" : "\($0)" }
        }
        
        
     //Solution: Declarative, without repeating comparisons
     func fizzBuzz(_ n: Int) -> [String] {
        var solution = [String]()
        var currentString = ""
        for i in 1...n {
            if i % 3 == 0 {
                currentString += "Fizz"
            }
            if i % 5 == 0 {
                currentString += "Buzz"
            } 
            if currentString == "" {
                currentString = String(i)
            }
            solution.append(currentString)
            currentString = ""
        }
        return solution 
       } 
        
        // Solution: Declarative, logically sound with two comparisons
        func fizzBuzz(_ n: Int) -> [String] {
        var solution = [String]()
        var currentString = ""
        for i in 1...n {
            //when do we get an empty string? if neither if statements worked
            let isDivisibleByThree = i % 3 == 0
            let isDivisibleByFive = i % 5 == 0
            if isDivisibleByThree {
                currentString += "Fizz"
            }
            if isDivisibleByFive {
                currentString += "Buzz"
            }
            // here instead of looking for empty string, we can look for its inverse: it should still be empty at this point if the number has not met the "divisible by 3" or "divisible by 5" conditions.
            if !isDivisibleByThree && !isDivisibleByFive {
                currentString = String(i)
            }
            solution.append(currentString)
            currentString = ""
        }
        return solution
    }
