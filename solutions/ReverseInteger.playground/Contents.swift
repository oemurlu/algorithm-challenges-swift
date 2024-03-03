class Solution {
    func reverse(_ x: Int) -> Int {
        let checkedValue = checkValue(x)
        if checkedValue == 0 { return 0 }
        
        var isNumberNegative = x < 0
        let str = String(abs(x))
        
        var revStr = String(str.reversed())
        
        if isNumberNegative {
            revStr = "-" + revStr
        }
        
        if let reversedInt = Int32(revStr) {
            return Int(reversedInt)
        } else {
            return 0
        }
    }

    func checkValue(_ x: Int) -> Int {
        guard x >= Int32.min && x <= Int32.max else { return 0 }
        return x
    }
}
