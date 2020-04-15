
// Trees
    10
    / \
  5   14
 /   /  \
1   11   20
  
  // given a tree, write a func that searches if a value exist.. 
  // In a conventional tree, nodes to the left of a root node are smaller, while nodes to thr right if a root node are larger
  
public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
     }
 }


func findNode(node:TreeNode?, value:Int)-> Bool{
    guard let node = node else {return false}
    
    if node.val == value {
        return true
    }else if node.val > value {
        return findNode(node: node.left, value: value)
    }else if node.val < value {
        return findNode(node: node.right, value: value)
    }
    return false
}

let rootNode = TreeNode(10)
let fiveNode = TreeNode(5)
let oneNode = TreeNode(1)
let fourTeenNode = TreeNode(14)
let elevenNode = TreeNode(11)
let twentyNode = TreeNode(20)

rootNode.left = fiveNode
fiveNode.left = oneNode
rootNode.right = fourTeenNode
fourTeenNode.left = elevenNode
fourTeenNode.right = twentyNode

findNode(node: rootNode, value: 11)
