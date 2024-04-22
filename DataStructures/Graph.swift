//
//  Graph.swift
//  DataStructures
//
//  Created by Eze, William (IRG) on 22/04/2024.
//

import Foundation

class Graph {
    
    var nodes: [String: [String]] = [:]

    func add_person(name: String){
        if nodes.contains(where: {$0.key == name}) {
            print("Person already exists")
            return
        }
        else{
            nodes[name] = []
        }
    }
    
    func remove_person(name subject: String){
        nodes.removeValue(forKey: subject)
    }
    
    func add_friendship(person: String, friend: String){
        if nodes.contains(where: {$0.key == person}) || nodes.contains(where: {$0.key == person}) {
            print("This relationship is invalid. One or both people don't exist")
        }
        else{
            nodes[person]?.append(friend)
        }
    }
    
}
