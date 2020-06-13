// https://leetcode.com/problems/rotate-array/
// Aman I. Orazgeldiyev

/*
 *
 Given an array, rotate the array to the right by k steps, where k is non-negative.

 Follow up:

 Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
 Could you do it in-place with O(1) extra space?
  

 Example 1:

 Input: nums = [1,2,3,4,5,6,7], k = 3
 Output: [5,6,7,1,2,3,4]
 Explanation:
 rotate 1 steps to the right: [7,1,2,3,4,5,6]
 rotate 2 steps to the right: [6,7,1,2,3,4,5]
 rotate 3 steps to the right: [5,6,7,1,2,3,4]
 Example 2:

 Input: nums = [-1,-100,3,99], k = 2
 Output: [3,99,-1,-100]
 Explanation:
 rotate 1 steps to the right: [99,-1,-100,3]
 rotate 2 steps to the right: [3,99,-1,-100]
 *
 */

import UIKit

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if k != 0 {
            let times = k / nums.count + 2
            let forward = k % nums.count
            var fullArray: [Int] = []

            for _ in 0..<times {
                for i in nums {
                    fullArray.append(i)
                }
            }

            nums = Array(fullArray[fullArray.count - forward - nums.count...fullArray.count - forward - 1])
        }
    }
}

