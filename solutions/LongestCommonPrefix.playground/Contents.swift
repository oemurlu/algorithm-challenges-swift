class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        var min = strs.min() ?? ""
        
        for str in strs {
            while !str.hasPrefix(min) {
                min.removeLast()
            }
        }
        
        return min
    }
}
