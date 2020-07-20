//
//
// https://leetcode.com/problems/reverse-integer/
// Aman I. Orazgeldiyev

/*
 Given a 32-bit signed integer, reverse digits of an integer.
 
 Example 1:
 
 Input: 123
 Output: 321
 Example 2:
 
 Input: -123
 Output: -321
 Example 3:
 
 Input: 120
 Output: 21
 Note:
 Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
 */

class Solution {
    func reverse(_ x: Int) -> Int {
        guard x != 0 else { return x }
        
        let allowedRange = Int(Int32.min)...Int(Int32.max)
        guard allowedRange.contains(x) else { return 0 }
        
        // Turn integer value to array
        var digits = [Int]()
        var remainder = abs(x)
        while remainder > 0 {
            let digit = remainder % 10
            digits.append(digit)
            remainder = remainder / 10
        }
        
        // Remove leading zero
        if let first = digits.first, first == 0 {
            digits.remove(at: 0)
        }
        
        // Compose result
        var result = 0
        var multiplier = Int(pow(Float(10), Float(digits.count - 1)))
        for digit in digits {
            result += digit * multiplier
            multiplier = multiplier / 10
        }
        
        guard allowedRange.contains(result) else { return 0 }
        
        return x < 0 ? -result : result
    }
}
