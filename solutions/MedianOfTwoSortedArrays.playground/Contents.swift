class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
        let mergedArr = (nums1 + nums2).sorted { $0 <= $1 }
        
        if mergedArr.count % 2 == 0  {
            let middleIndex = mergedArr.count / 2
            let val1 = mergedArr[middleIndex]
            let val2 = mergedArr[middleIndex - 1]
            
            return (Double(val1) + Double(val2)) / 2
        } else {
            let middleIndex: Int = mergedArr.count / 2
            return Double(mergedArr[middleIndex])
        }
    }
}
