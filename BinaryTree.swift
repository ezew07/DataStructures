//
//  BinaryTree.swift
//  DataStructures
//
//  Created by Eze, William (IRG) on 11/03/2024.
//

import Foundation

class BinaryTree {
    var root: Node?

    func contains(target: String) -> (contained: Bool, node: Node?) {
        var currentNode = root
        while currentNode != nil{
            if currentNode!.value == target{
                return (contained: true, node: currentNode)
            }
            if target.lowercased() < currentNode!.value.lowercased() {
                currentNode = currentNode!.left
            }
            else{
                currentNode = currentNode!.right
            }
        }
        return (contained: false, node: nil)
    }

    func add(subject: String) {
        var currentNode: Node? = root
        while currentNode != nil {
            if subject < currentNode!.value {
                if currentNode!.left == nil {
                    currentNode!.left = Node(value: subject)
                    return
                }
                currentNode = currentNode?.left
            }
            else if subject > currentNode!.value {
                if currentNode!.right == nil {
                    currentNode!.right = Node(value: subject)
                    return
                }
                currentNode = currentNode?.right
            }
        }
    }
    
    func delete(target: String) {
        var currentNode = contains(target: target)
        
        
        
        
        
    }
    
    
}


class Node {
    var value: String
    var left: Node?
    var right: Node?

    init(value: String) {
        self.value = value
    }
    
    
}
