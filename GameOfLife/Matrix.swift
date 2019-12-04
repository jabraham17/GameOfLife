//
//  Matrix.swift
//  GameOfLife
//
//  Created by Jacob Abraham on 11/27/19.
//  Copyright © 2019 MJA. All rights reserved.
//

import Foundation

//implenent a small subset of matrix operations
class Matrix<Element>: Sequence {
    //the size of the matrix
    private var size: (Int, Int)
    func getSize() -> (Int, Int) {
        return size
    }
    
    //the number of rows
    var n: Int {
        get {
            return size.0
        }
    }
    
    //the number of columns
    var m: Int {
        get{
            return size.1
        }
    }
    
    //the backing array, keep this private
    var backingArray: [Element?]
    
    
    //init the size
    init(size: (Int, Int)) {
        self.size = size
        self.backingArray = Array(repeating: nil, count: size.0 * size.1)
    }
    //make a deep copy of the matrix
    func copy() -> Matrix {
        let newMatrix = Matrix(size: size)
        for i in 0..<m {
            for j in 0..<n {
                print("\(i), \(j)")
                newMatrix[i,j] = self[i,j]
            }
        }
        print("done")
        
        return newMatrix
    }
    func isValidIndex(_ row: Int, _ col: Int) -> Bool {
        return row >= 0 && row < n && col >= 0 && col < m
    }
    //make get and set subscriptable
    subscript(row: Int, col: Int) -> Element? {
        get {
            assert(isValidIndex(row, col), "Index [\(row), \(col)] out of range")
            return backingArray[(row*m) + col]
        }
        set(newValue) {
            assert(isValidIndex(row, col), "Index [\(row), \(col)] out of range")
            backingArray[(row*m) + col] = newValue
        }
    }
    
    //return an array of rows that
    private func rowArray() -> [Row<Element>] {
        var rows: [Row<Element>] = [Row<Element>]()
        for i in 0..<n {
            rows.append(Row(row: Array(backingArray[(i*m)..<((i*m)+m)])))
        }
        return rows
    }
    
    //iterator stuff
    func makeIterator() -> Array<Row<Element>>.Iterator {
        return rowArray().makeIterator()
    }
}

//a row of the matrix
struct Row<Element>: Sequence {
    //the backing array, keep this private
    private var backingArray: [Element?]
    
    init(row: [Element?]) {
        self.backingArray = row
    }
    
    //iterator stuff
    func makeIterator() -> Array<Element?>.Iterator {
        return self.backingArray.makeIterator()
        //return Array<Element>.Iterator(_elements: self.backingArray)
    }
}

//make a string representation of a row
extension Row: CustomStringConvertible {
    var description: String {
        var items: [String] = [String]()
        for e in self {
            //add each element in the row to the items array
            if let elm = e {
                items.append(String(describing: elm))
            }
            else {
                items.append("_")
            }
        }
        //combine the array into one str and return
        return items.joined(separator: " ")
    }
}

//make a string representation of the matrix
extension Matrix: CustomStringConvertible {
    var description: String {
        var items: [String] = [String]()
        for row in self {
            //add each row as a string
            items.append(String(describing: row))
        }
        //combine the array into one str and return
        return items.joined(separator: "\n")
    }
}
