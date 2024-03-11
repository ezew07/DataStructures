//
//  BinaryTree.swift
//  DataStructures
//
//  Created by Eze, William (IRG) on 11/03/2024.
//

import Foundation

class BinaryTree {
    var root: Node?

    func contains(target: String) -> Bool {
        var currentNode = root
        while currentNode != nil{
            if currentNode!.value == target{
                return true
            }
            if target.lowercased() < currentNode!.value.lowercased() {
                currentNode = currentNode!.left
            }
            else{
                currentNode = currentNode!.right
            }
        }
        return false
    }

    
    
    
    func add(value: String) {
        // Implement this method
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
