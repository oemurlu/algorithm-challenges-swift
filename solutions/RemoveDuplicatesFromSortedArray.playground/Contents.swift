class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        if nums.isEmpty { return 0 }
        
        var i = 1;
        
        for j in 1 ..< nums.count {
            if nums[j] != nums[j-1] {
                nums[i] = nums[j]
                i += 1
            }
        }
        
        return i
    }
}
