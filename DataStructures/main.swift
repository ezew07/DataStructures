//
//  main.swift
//  DataStructures
//
//  Created by Eze, William (IRG) on 20/02/2024.
//

import Foundation

let tree = BinaryTree()

let first = BSTNode(value: "M")
let second = BSTNode(value: "D")
let third = BSTNode(value: "A")
let fourth = BSTNode(value: "F")
let fifth = BSTNode(value: "S")
let sixth = BSTNode(value: "P")
let seventh = BSTNode(value: "Z")
tree.root = first
first.left = second
first.right = fifth
//second.left = third
//second.right = fourth
first.right = fifth
fifth.left = sixth
fifth.right = seventh


//print(tree.contains(targetValue: "A"))    // True
//print(tree.contains(targetValue: "B"))    // False
//print(tree.contains(targetValue: "C"))    // False
//print(tree.contains(targetValue: "L"))    // False
//print(tree.contains(targetValue: "M"))    // True
//print(tree.contains(targetValue: "N"))    // False
//print(tree.contains(targetValue: "X"))    // False
//print(tree.contains(targetValue: "Y"))    // False
//print(tree.contains(targetValue: "Z"))    // True
//print(tree.contains(targetValue: "eze"))

tree.delete(key: "D")
print(tree.contains(targetValue: "D"))

