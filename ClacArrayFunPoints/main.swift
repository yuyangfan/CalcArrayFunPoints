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


//print(mathOp(3, right: 2, op: add))
//print(mathOp(3, right: 2, op: sub))
//print(mathOp(3, right: 2, op: multiply))
//print(mathOp(3, right: 2, op: divide))


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




//print(addArray([1,2,3,4,5]))
//print(multiArray([1,2,3,4,5]))
//print(avg([1,2,3,4,5,6,7,8,9,10]))
//print(count([1,2,3,4,5,6,7,8,9]))
//print(mathArrayOp([1,2,3,4,5,6,7,8,9], op: avg))


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


//print(subPoints((-2,-3), point2: (1,2)))
//print(addPoints((1,3), point2: (1,nil)))

// Points: Dictionaries

//func addPointsDict (point1: Dictionary<String, Int>?, point2: Dictionary<String, Int>?) -> (Int, Int)? {
//    
//}
