class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [String: [String]]()

        for str in strs {
            let sortedStr = String(str.sorted())
            //explanation-1
            dict[sortedStr, default: []].append(str)
        }

        return Array(dict.values)
    }
}

// explanation-1
// eger 'sortedStr' key'i dictionary'de yoksa bos dizi olusturur ve o anahtara atar

// sonra bu diziye mevcut string'i ekler. Boylece ayni anahtar icin birden fazla string'i array ile gruplariz
