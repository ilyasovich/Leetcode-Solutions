// https://leetcode.com/problems/valid-parentheses/
// Aman I. Orazgeldiyev


/*
 *
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Note that an empty string is also considered valid.

 Example 1:

 Input: "()"
 Output: true
 Example 2:

 Input: "()[]{}"
 Output: true
 Example 3:

 Input: "(]"
 Output: false
 Example 4:

 Input: "([)]"
 Output: false
 Example 5:

 Input: "{[]}"
 Output: true
 *
 */

class Solution {
    func isValid(_ s: String) -> Bool {
        
        var charArray = [Character]()
        
        for ch in s {
            if ch == "(" || ch == "{" || ch == "[" {
                charArray.insert(ch, at: 0)
                
            } else {
                if charArray.isEmpty {
                    return false
                }
                
                if ch == ")" && charArray.first != "(" || ch == "}" && charArray.first != "{" || ch == "]" && charArray.first != "[" {
                    return false
                }
                
                charArray.removeFirst()
            }
        }
        return charArray.isEmpty
    }
}
