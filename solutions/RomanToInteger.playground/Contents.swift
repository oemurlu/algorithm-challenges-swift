class Solution {
    func romanToInt(_ s: String) -> Int {
        var sum = 0
        var oldChar: Character?
        
        for c in s {
            switch c {
            case "I":
                sum += 1
            case "V":
                if let oldC = oldChar, oldC == "I" {
                    sum -= 2
                }
                sum += 5
            case "X":
                if let oldC = oldChar, oldC == "I" {
                    sum -= 2
                }
                sum += 10
            case "L":
                if let oldC = oldChar, oldC == "X" {
                    sum -= 20
                }
                sum += 50
            case "C":
                if let oldC = oldChar, oldC == "X" {
                    sum -= 20
                }
                sum += 100
            case "D":
                if let oldC = oldChar, oldC == "C" {
                    sum -= 200
                }
                sum += 500
            case "M":
                if let oldC = oldChar, oldC == "C" {
                    sum -= 200
                }
                sum += 1000
            default:
                return 0
            }
            oldChar = c
        }
        return sum
    }
}

/* Important thing:
I can be placed before V (5) and X (10) to make 4 and 9.
X can be placed before L (50) and C (100) to make 40 and 90.
C can be placed before D (500) and M (1000) to make 400 and 900.
*/
