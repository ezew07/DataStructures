//
//  main.swift
//  DataStructures
//
//  Created by Eze, William (IRG) on 20/02/2024.
//

import Foundation

let eze = HashTable(size: 3)
print(eze.hash_function(key: "eze"))
eze.insert(value: "eze")
print(eze.find(key: "eze"))
