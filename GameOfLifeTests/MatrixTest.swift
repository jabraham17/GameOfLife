//
//  MatrixTest.swift
//  GameOfLifeTests
//
//  Created by Jacob Abraham on 11/28/19.
//  Copyright © 2019 MJA. All rights reserved.
//

import XCTest
@testable import GameOfLife

class MatrixTest: XCTestCase {

    func testPrint() {
        var mat: Matrix<Int> = Matrix(size: (3,3))
        var matStr = String(describing: mat)
        var str = "_ _ _\n_ _ _\n_ _ _"
        XCTAssertEqual(matStr, str)
        
        
        mat = Matrix(size: (3,2))
        matStr = String(describing: mat)
        str = "_ _\n_ _\n_ _"
        XCTAssertEqual(matStr, str)
        
        mat = Matrix(size: (2,3))
        matStr = String(describing: mat)
        str = "_ _ _\n_ _ _"
        XCTAssertEqual(matStr, str)
    }
    
    func testIndex() {
        var mat: Matrix<Int> = Matrix(size: (3,3))
        
        var k: Int = 1
        for (i, row) in mat.enumerated() {
            for (j, _) in row.enumerated() {
                mat[i, j] = k
                k += 1
            }
        }
        k = 1
        for row in mat {
            for e in row {
                XCTAssertEqual(e, k)
                k += 1
            }
        }
        
        var matStr = String(describing: mat)
        var str = "1 2 3\n4 5 6\n7 8 9"
        print(matStr)
        XCTAssertEqual(matStr, str)
        
        
        
        mat = Matrix(size: (3,4))
        k = 1
        for (i, row) in mat.enumerated() {
            for (j, _) in row.enumerated() {
                mat[i, j] = k
                k += 1
            }
        }
        k = 1
        for row in mat {
            for e in row {
                XCTAssertEqual(e, k)
                k += 1
            }
        }
        
        
        matStr = String(describing: mat)
        str = "1 2 3 4\n5 6 7 8\n9 10 11 12"
        print(matStr)
        XCTAssertEqual(matStr, str)
        
        
        
        mat = Matrix(size: (4,3))
        k = 1
        for (i, row) in mat.enumerated() {
            for (j, _) in row.enumerated() {
                mat[i, j] = k
                k += 1
            }
        }
        k = 1
        for row in mat {
            for e in row {
                XCTAssertEqual(e, k)
                k += 1
            }
        }
        
        
        matStr = String(describing: mat)
        str = "1 2 3\n4 5 6\n7 8 9\n10 11 12"
        print(matStr)
        XCTAssertEqual(matStr, str)
    }

}
