class Solution {
    func intToRoman(_ num: Int) -> String {
        
        var n = num
        var result = ""
        
        while n > 0 {
            switch n {
            case _ where n >= 1000:
                n -= 1000
                result.append("M")
            case _ where n >= 900:
                n -= 900
                result.append("CM")
            case _ where n >= 500:
                n -= 500
                result.append("D")
            case _ where n >= 400:
                n -= 400
                result.append("CD")
            case _ where n >= 100:
                n -= 100
                result.append("C")
            case _ where n >= 90:
                n -= 90
                result.append("XC")
            case _ where n >= 50:
                n -= 50
                result.append("L")
            case _ where n >= 40:
                n -= 40
                result.append("XL")
            case _ where n >= 10:
                n -= 10
                result.append("X")
            case _ where n >= 9:
                n -= 9
                result.append("IX")
            case _ where n >= 5:
                n -= 5
                result.append("V")
            case _ where n >= 4:
                n -= 4
                result.append("IV")
            case _ where n >= 1:
                n -= 1
                result.append("I")
            default:
                break
            }
        }
        return result
    }
}
