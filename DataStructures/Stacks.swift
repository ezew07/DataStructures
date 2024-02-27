//
//  Stacks.swift
//  DataStructures
//
//  Created by Eze, William (IRG) on 20/02/2024.
//

import Foundation

class Stacks{
    var stackPointer = -1
    let max: Int
    var contents: [Int]
    
    init(max: Int, contents: [Int]) {
        self.max = max
        self.contents = contents
    }
    
    func push(data: Int){
        // Check if full
        if self.contents.count >= self.max{
            print("Stack is full")
        }
        else{
            self.contents.append(data)
            self.stackPointer += 1
        }
    }
    
    func pop() {
        if self.contents.count == 0{
            print("Stack is empty")
        }
        else{
            self.contents.remove(at: self.contents.count-1)
        }
    }
    
    func peek(){
        if self.contents.count == 0{
            print("Stack is empty")
        }
        else{
            print(self.contents[0])
        }
    }

    
}
