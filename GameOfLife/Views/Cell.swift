//
//  Cell.swift
//  GameOfLife
//
//  Created by Jacob Abraham on 11/26/19.
//  Copyright © 2019 MJA. All rights reserved.
//

import SwiftUI

struct Cell: View {
    
    @EnvironmentObject var sharedState: SharedUserState
    
    var row: Int
    var col: Int
    
    
    var body: some View {
        Button ( action: {
            //toggle the cell if not running
            //set the object to change
            self.sharedState.objectWillChange.send()
            self.sharedState.driver.toggleState(row: self.row, col: self.col)
        }) {
            //if alive, color red
            if self.sharedState.driver.getState(row: row, col: col) == .Alive {
                Rectangle()
                    .fill(Color.init("CellAlive"))
                    .border(Color.black, width: 1)
            }
                //dead, color clear
            else {
                Rectangle()
                    .fill(Color.clear)
                    .border(Color.black, width: 1)
            }
        }
            //if its running its disabled
            .disabled(self.sharedState.running)
    }
    
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Cell(row: 0, col: 0)
                .previewLayout(.sizeThatFits)
                .environmentObject(SharedUserState())
        }
    }
}
