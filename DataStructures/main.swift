//
//  main.swift
//  DataStructures
//
//  Created by Eze, William (IRG) on 20/02/2024.
//

import Foundation

let tree = BinaryTree()

let first = Node(value: "M")
let second = Node(value: "D")
let third = Node(value: "A")
let fourth = Node(value: "F")
let fifth = Node(value: "S")
let sixth = Node(value: "P")
let seventh = Node(value: "Z")
tree.root = first
first.left = second
second.left = third
second.right = fourth
first.right = fifth
fifth.left = sixth
fifth.right = seventh


//print(tree.contains(target: "A"))    // True
//print(tree.contains(target: "B"))    // False
//print(tree.contains(target: "C"))    // False
//print(tree.contains(target: "L"))    // False
//print(tree.contains(target: "M"))    // True
//print(tree.contains(target: "N"))    // False
//print(tree.contains(target: "X"))    // False
//print(tree.contains(target: "Y"))    // False
//print(tree.contains(target: "Z"))    // True
tree.add(subject: "Eze")
print(tree.contains(target: "Eze"))
