//
//  HashTable.swift
//  DataStructures
//
//  Created by Eze, William (IRG) on 27/02/2024.
//

import Foundation

class HashTable {
    
    var size: Int
    var table: [[String]] = []
    
    init(size: Int) {
        self.size = size
        self.table = Array(repeating: [], count: size)
    }
    
    func hash_function(key: String) -> Int {
        var hash = 0
        for i in key{
            hash += Int((i.asciiValue)!)
        }
        return hash
    }
    
    func insert(value: String){
        let index = hash_function(key: value) % self.size
        table[index].append(value)
    }
    
    func find(key: String) -> [String]{
        let index = hash_function(key: key) % self.size
        return table[index]

        
    }
    
    
}
