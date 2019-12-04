//
//  SketchConversionTest.swift
//  GameOfLifeTests
//
//  Created by Jacob Abraham on 12/2/19.
//  Copyright © 2019 MJA. All rights reserved.
//

import XCTest
@testable import GameOfLife

class SketchConversionTest: XCTestCase {
    
    func testManDrawingPerformance() {

        measure {
            let _ = Man()
        }
    }

}
