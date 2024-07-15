class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        let n = digits.count
        
        for i in (0 ..< n).reversed() {
            if digits[i] < 9 {
                digits[i] += 1
                return digits
            }
            digits[i] = 0
        }
        digits.insert(1, at: 0)
        return digits
    }
}
