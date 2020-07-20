//
//

/*
 *
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

 You may assume the two numbers do not contain any leading zero, except the number 0 itself.

 Example:

 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 Output: 7 -> 0 -> 8
 Explanation: 342 + 465 = 807.
 *
 */


/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var node1 = l1
        var node2 = l2
        var output = ListNode(0)
        var head = output
        
        var carry = 0
        
        while(node1 != nil || node2 != nil) {
            var sum = carry
            
            if (node1 != nil) {
                sum = sum + node1!.val
                node1 = node1!.next
            }
            
            if (node2 != nil) {
                sum = sum + node2!.val
                node2 = node2!.next
            }
            
            let value = sum % 10
            carry = sum / 10
            
            var newNode = ListNode(value)
            output.next = newNode
            output = output.next!
        }
        
        if(carry !=  0) {
            var newNode = ListNode(carry)
            output.next = newNode
            output = output.next!
        }
        
        return head.next
    }
}

