// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        guard let list1 = list1 else { return list2 }
        guard let list2 = list2 else { return list1 }
        
        var mergedHead: ListNode?
        var mergedTail: ListNode?
        
        if list1.val < list2.val {
            mergedHead = list1
            mergedTail = mergeTwoLists(list1.next, list2)
        } else {
            mergedHead = list2
            mergedTail = mergeTwoLists(list1, list2.next)
        }
        
        mergedHead?.next = mergedTail
        
        return mergedHead
    }
}
