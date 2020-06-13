// Source: https://leetcode.com/problems/binary-tree-tilt/
// Aman I. Orazgeldiyev

/*************************************************************************
*
Given a binary tree, return the tilt of the whole tree.

The tilt of a tree node is defined as the absolute difference between the sum of all left subtree node values and the sum of all right subtree node values. Null node has tilt 0.

The tilt of the whole tree is defined as the sum of all nodes' tilt.

Example:

Input:
         1
       /   \
      2     3
Output: 1
Explanation:
Tilt of node 2 : 0
Tilt of node 3 : 0
Tilt of node 1 : |2-3| = 1
Tilt of binary tree : 0 + 0 + 1 = 1
*
************************************************************************/

/*
Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
*/

class Solution {
    func findTilt(_ root: TreeNode?) -> Int {
       var res = 0
        
       func pos(_ root: TreeNode?) -> Int {
           guard let root = root else {
               return 0
           }
           
           var left = pos(root.left)
           var right = pos(root.right)
           
           res += Int(abs(left - right))
           
           return left + right + root.val
       }
        
        pos(root)
        
        return res
    }
}
