//
//  main.swift
//  DataStructures
//
//  Created by Eze, William (IRG) on 20/02/2024.
//

import Foundation

let network = Graph()
network.add_person(name: "eze")
network.add_friendship(person: "eze", friend: "will")
print(network.nodes)

network.add_person(name: "will")
network.add_friendship(person: "eze", friend: "will")

print(network.nodes)
