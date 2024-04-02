//
//  BinaryTree.swift
//  DataStructures
//
//  Created by Eze, William (IRG) on 11/03/2024.
//

import Foundation

class BinaryTree {
    var root: BSTNode?
    
    func contains(targetValue target: String) -> (contained: Bool, node: BSTNode?, parentNode: BSTNode?) {
        var currentNode = self.root
        var parentNode: BSTNode? = nil
        
        while currentNode != nil{
            if currentNode?.value == target{
                return (contained: true, node: currentNode, parentNode: parentNode)
            }
            if target.lowercased() < currentNode!.value.lowercased() {
                parentNode = currentNode
                currentNode = currentNode!.left
            }
            else{
                parentNode = currentNode
                currentNode = currentNode!.right
            }
        }
        
        return (contained: false, node: nil, parentNode: nil)
    }
    
    func add(subject: String){
        var currentNode = self.root
        while currentNode != nil {
            if subject.lowercased() < currentNode!.value.lowercased(){
                if currentNode!.left == nil {
                    currentNode?.left = BSTNode(value: subject)
                    return
                }
                currentNode = currentNode?.left
            }
            else{
                if currentNode!.right == nil {
                    currentNode?.right = BSTNode(value: subject)
                    return
                }
                currentNode = currentNode?.right
            }
            
        }
    }
    
    // Function to delete a key from BST
    func delete(key: String) {
        root = deleteRec(root, key)
    }

    // A recursive function to delete a key in BST
    private func deleteRec(_ root: BSTNode?, _ key: String) -> BSTNode? {
        guard let root = root else { return nil }

        if key < root.value {
            root.left = deleteRec(root.left, key)
        } else if key > root.value {
            root.right = deleteRec(root.right, key)
        } else {
            // Node with only one child or no child
            if root.left == nil {
                return root.right
            } else if root.right == nil {
                return root.left
            }

            // Node with two children: Get the inorder successor
            root.value = minValueNode(root.right!)!.value

            // Delete the inorder successor
            root.right = deleteRec(root.right, root.value)
        }

        return root
    }
    
    // Function to find the node with the minimum key value in a subtree
    private func minValueNode(_ node: BSTNode) -> BSTNode? {
        var current = node
        while let left = current.left {
            current = left
        }
        return current
    }

    
}


class BSTNode {
    var value: String
    var left: BSTNode? = nil
    var right: BSTNode? = nil

    init(value: String) {
        self.value = value
    }
    
    
}
