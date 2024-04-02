////
////  temp.swift
////  DataStructures
////
////  Created by William Eze on 02/04/2024.
////
//
//import Foundation
//
//
//func contains(target: String) -> (contained: Bool, node: Node?) {
//    var currentNode = root
//    while currentNode != nil{
//        if currentNode!.value == target{
//            return (contained: true, node: currentNode)
//        }
//        if target.lowercased() < currentNode!.value.lowercased() {
//            currentNode = currentNode!.left
//        }
//        else{
//            currentNode = currentNode!.right
//        }
//    }
//    return (contained: false, node: nil)
//}
//
//func add(subject: String) {
//    var currentNode: Node? = root
//    while currentNode != nil {
//        if subject < currentNode!.value {
//            if currentNode!.left == nil {
//                currentNode!.left = Node(value: subject)
//                return
//            }
//            currentNode = currentNode?.left
//        }
//        else if subject > currentNode!.value {
//            if currentNode!.right == nil {
//                currentNode!.right = Node(value: subject)
//                return
//            }
//            currentNode = currentNode?.right
//        }
//    }
//}
//
//func delete(target: String) {
//    var currentNode = self.contains(target: target)
//    
//    
//    
//    
//    
//}

//
//func delete(target: String) {
//    if self.contains(targetValue: target).contained == false{
//        print("Deletion target does not exist")
//        return
//    }
//    else{
//        var currentNode = self.contains(targetValue: target)
//        // Subject node has no children
//        if currentNode.node!.left == nil && currentNode.node!.right == nil {
//            currentNode.parentNode = nil
//            return
//        }
////            Subject node has one child
//       if currentNode.node!.left != nil && currentNode.node!.right == nil{
//           if currentNode.parentNode!.value < currentNode.node!.left!.value{
//               currentNode.parentNode?.left = currentNode.node?.left
//               return
//           }
//           else{
//               currentNode.parentNode?.right = currentNode.node?.left
//               return
//           }
//       }
//       if currentNode.node!.right != nil && currentNode.node!.left == nil{
//           if currentNode.parentNode!.value < currentNode.node!.right!.value{
//               currentNode.parentNode?.right = currentNode.node?.right
//               return
//           }
//           else{
//               currentNode.parentNode?.left = currentNode.node?.right
//               return
//           }
//       }
//
//    }
//}
