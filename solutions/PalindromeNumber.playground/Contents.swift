class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let tempStr = "\(x)"
        let reversedStr = String(tempStr.reversed())
        
        return tempStr == reversedStr
    }
}
