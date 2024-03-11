class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let length = max(word1.count, word2.count)
        let charsOne = Array(word1)
        let charsTwo = Array(word2)
        
        var result = ""
        
        for i in 0 ..< length {
            if i < charsOne.count {
                result += String(charsOne[i])
            }
            if i < charsTwo.count {
                result += String(charsTwo[i])
            }
        }
        
        return result
    }
}
