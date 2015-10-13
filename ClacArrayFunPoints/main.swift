//
//  main.swift
//  ClacArrayFunPoints
//
//  Created by Yuyang Fan on 10/12/15.
//  Copyright © 2015 Yuyang Fan. All rights reserved.
//

import Foundation

// Calculator
// takes two integers and add them up. returns nil if anyone of them is nil
func add (left: Int?, right: Int?) -> Int? {
    if (left != nil && right != nil){
        return left! + right!
    }
    
    return nil
}

// takes two integers and subtract right from left. returns nil if anyone of them is nil
func sub (left: Int?, right: Int?) -> Int? {
    if (left != nil && right != nil){
        return left! - right!
    }
    
    return nil
}

// takes two integers and multiply them. returns nil if anyone of them is nil
func multiply (left: Int?, right: Int?) -> Int? {
    if (left != nil && right != nil){
        return left! * right!
    }
    
    return nil
}

// takes two integers and divide them. returns nil if anyone of them is nil
func divide (left: Int?, right: Int?) -> Int? {
    if (left != nil && right != nil){
        return left! / right!
    }
    
    return nil
}

// accepts either op, takes two integers and returns operation results
func mathOp(left: Int?, right: Int?, op: (Int?, Int?) -> Int?) -> Int? {
    
    return op(left, right)
        
}

print("Calculator:")
print("3 + 2 is \(mathOp(3, right: 2, op: add)!)")
print("3 - 2 is \(mathOp(3, right: 2, op: sub)!)")
print("3 * 2 is \(mathOp(3, right: 2, op: multiply)!)")
print("4 / 2 is \(mathOp(4, right: 2, op: divide)!)")
print("")



// Array Fun
// takes an array of integers and returns its sum
func addArray (numbers: [Int]?) -> Int? {
    if (numbers != nil) {
        var total = 0
        for number in numbers! {
            total += number
        }
        return total
    }else {
        return nil
    }
}



// takes an array of integers and returns its product
func multiArray (numbers: [Int]?) -> Int? {
    if (numbers != nil) {
        var total = 1
        for number in numbers! {
            total *= number
        }
        return total
    }else {
        return nil
    }
}

// takes an array of integers and returns array count
func count (numbers: [Int]?) -> Int? {
    if (numbers != nil) {
        return numbers!.count
    }else {
        return nil
    }
}

// takes an array of integers and returns their average
func avg (numbers :[Int]?) -> Int? {
    if (numbers != nil) {
        let total = addArray(numbers)
        let totalCount = count(numbers)
        return total!/totalCount!
        
    }
    return nil
}


func mathArrayOp (numbers: [Int]?, op: ([Int]? -> Int?)) -> Int? {
    return op(numbers)
}

print("Array Fun:")
print("add array [1,2,3,4,5] is \(mathArrayOp([1,2,3,4,5], op: addArray)!)")
print("multiply array [1,2,3,4,5] is \(mathArrayOp([1,2,3,4,5], op: multiArray)!)")
print("avg array [1,2,3,4,5,6,7,8,9,10] is \(mathArrayOp([1,2,3,4,5,6,7,8,9,10], op: avg)!)")
print("count array [1,2,3,4,5,6,7,8,9,10] is \(mathArrayOp([1,2,3,4,5,6,7,8,9,10], op: count)!)")
print("")



// Points: Tuples
// adds up points (1,2) + (3,4) = (4,6)
func addPoints (point1: (Int?, Int?)?, point2: (Int?, Int?)?) -> (Int, Int)? {
    var x = 0
    var y = 0
    if (point1 != nil && point2 != nil) {
        if (point1!.0 != nil && point2!.0 != nil) {
            x = point1!.0! + point2!.0!
        }
        if (point1!.1 != nil && point2!.1 != nil) {
            y = point1!.1! + point2!.1!
        }
        return (x,y)
    }else {
        return nil
    }
}

// subtracts points (4,6) - (3,4) = (1,2)
func subPoints (point1: (Int?, Int?)?, point2: (Int?, Int?)?) -> (Int, Int)? {
    var x = 0
    var y = 0
    if (point1 != nil && point2 != nil) {
        if (point1!.0 != nil && point2!.0 != nil) {
            x = point1!.0! - point2!.0!
        }
        if (point1!.1 != nil && point2!.1 != nil) {
            y = point1!.1! - point2!.1!
        }
        return (x,y)
    }else {
        return nil
    }
}

print("Points:")
print("(1,3) add (2,4) is \(addPoints((1,3), point2: (2,4))!)")
print("(1,3) subtract (2,4) is \(subPoints((1,3), point2: (2,4))!)")
print("")

// Points: Dictionaries
func addPoints (point1:[String:Double]?, point2: [String:Double]?) -> (Double, Double)? {
    if(point1 != nil && point2 != nil){
        let x1 = point1!["x"]
        let y1 = point1!["y"]
        let x2 = point2!["x"]
        let y2 = point2!["y"]
        
        if(x1 != nil && x2 != nil && y1 != nil && y2 != nil) {
            
            return (x1! + x2!, y1! + y2!)
        }
    }
        return nil
}

func subPoints (point1:[String:Double]?, point2: [String:Double]?) -> (Double, Double)? {
    if(point1 != nil && point2 != nil){
        let x1 = point1!["x"]
        let y1 = point1!["y"]
        let x2 = point2!["x"]
        let y2 = point2!["y"]
        
        if(x1 != nil && x2 != nil && y1 != nil && y2 != nil) {
            
            return (x1! - x2!, y1! - y2!)
        }
    }
    return nil
}


print("[\"x\":2.3, \"y\":3.2] adds [\"x\":3.3, \"y\":4.5] is ")
print(addPoints(["x":2.3, "y":3.2], point2: ["x":3.3, "y":4.5])!)

print("[\"x\":10.8, \"y\":10.2] subtracts [\"x\":17.1, \"y\":4.1] is ")
print(subPoints(["x":10.8, "y":10.2], point2: ["x":17.1, "y":4.1])!)





