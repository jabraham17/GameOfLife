//
//  GameOfLifeDriver.swift
//  GameOfLife
//
//  Created by Jacob Abraham on 11/27/19.
//  Copyright © 2019 MJA. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

//implemennt the game of life algo
class GameOfLifeDriver: ObservableObject {
    
    let speed: TimeInterval = 0.2
    
    var size: (Int, Int)
    //what the current state of the matrix is
    enum State {
        case Alive, Dead
        mutating func flip() {
            self = self == .Alive ? .Dead : .Alive
        }
    }
    var matrixA: Matrix<State>
    var matrixB: Matrix<State>
    
    //which matrix is the current one
    enum CurrentMatrix {
        case A, B
        mutating func flip() {
            
            self = self == .A ? .B : .A
        }
    }
    @Published var current: CurrentMatrix
    
    init(size: (Int, Int)) {
        self.size = size
        matrixA = Matrix(size: size)
        //init to be dead
        for (i, row) in matrixA.enumerated() {
            for (j, _) in row.enumerated() {
                matrixA[i, j] = .Dead
            }
        }
        matrixB = matrixA.copy()
        
        //initally not running
        running = false
        
        //inital matrix is A
        current = .A
    }
    
    //get the current state matrix
    func getState() -> Matrix<State> {
        return current == .A ? matrixA : matrixB
    }
    //get the current state of a specific row/col
    func getState(row: Int, col: Int) -> State {
        return getState()[row, col]!
    }
    //set the current state of a specific row/col
    func setState(_ state: State, row: Int, col: Int) {
        getState()[row, col] = state
    }
    //toggle the current state of a specific row/col
    func toggleState(row: Int, col: Int) {
        getState()[row, col]?.flip()
    }
    
    //move the game to the next cycle
    func cycle() {
        for i in 0..<size.0 {
            for j in 0..<size.1 {
                if self.current == .A {
                    //current state is matrixA
                    //modify B
                    matrixB[i,j] = deadOrAlive(row: i, col: j)
                }
                else {
                    //current state is matrixB
                    //modify mA
                    matrixA[i,j] = self.deadOrAlive(row: i, col: j)
                }
            }
        }
        //flip current state
        self.current.flip()
    }
    
    //determine if a cell will die in the next cycle
    func deadOrAlive(row x: Int, col y: Int) -> State {
        
        //the current state
        let state = getState(row: x, col: y)
        
        //compute surrounding indexes
        var surround: [(Int, Int)] = [(Int, Int)]()
        // left, x, right
        var xvals = [x-1,x,x+1]
        // top, x, bottom
        var yvals = [y-1,y,y+1]
        
        if x == 0 {
            xvals[0] = size.0-1
        }
        else if x == size.0-1 {
            xvals[2] = 0
        }
        if y == 0 {
            yvals[0] = size.1-1
        }
        else if y == size.1-1 {
            
            yvals[2] = 0
        }
        
        //calculate all permutations of the surronding indices
        for i in 0..<3 {
            for j in 0..<3 {
                surround.append((xvals[i], yvals[j]))
            }
        }
        //remove itself
        surround.remove(at: 4)

        //num surrounding alive
        var alive = 0
        for (i, j) in surround {
            //if alive, increase alive count
            if getState(row: i, col: j) == .Alive {
                alive += 1
            }
        }

        if state == .Alive && (alive == 2 || alive == 3) {
            return .Alive
        }
        else if state == .Dead && alive == 3 {
            return .Alive
        }
        else {
            return .Dead
        }
    }
    
    var gameTimer: Timer?
    var running: Bool
    //start running the game
    func startGame() {
        running = true
        gameTimer = Timer.scheduledTimer(withTimeInterval: speed, repeats: true, block: {_ in
            self.cycle()
        })
    }
    //stop running the game
    func stopGame() {
        gameTimer?.invalidate()
        gameTimer = nil
        running = false
    }
    func toggleGame() {
        running ? stopGame() : startGame()
    }
}
