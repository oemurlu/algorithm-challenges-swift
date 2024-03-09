class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for index in 0..<nums.count {
            if nums[index] == target || nums[index] > target {
                return index
            }
        }
        return nums.count
    }
}
