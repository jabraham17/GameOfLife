//
//  GameView.swift
//  GameOfLife
//
//  Created by Jacob Abraham on 11/26/19.
//  Copyright © 2019 MJA. All rights reserved.
//

import SwiftUI

struct GameView: View {
    
    @EnvironmentObject var sharedState: SharedUserState
    
    var showGrid: Bool
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack(spacing: 0) {
                //make rows
                ForEach(0..<self.sharedState.driver.size.0, id: \.self) { i in
                    //inside each row put all the cells
                    HStack(spacing: 0) {
                        ForEach(0..<self.sharedState.driver.size.1, id: \.self) { j in
                            Cell(row: i, col: j)
                        }
                    }
                }
            }
            .border(Color.black, width: 2)
            
            //ZStack {
            /*HStack() {
             ForEach(1..<self.gridSize.0, id: \.self) {_ in
             Group{
             VLine(color: .black)
             Spacer()
             .frame(height: geometry.size.height)
             }
             }
             VLine(color: .black)
             }
             VStack() {
             ForEach(1..<self.gridSize.1, id: \.self) {_ in
             Group{
             HLine(color: .black)
             Spacer()
             .frame(width: geometry.size.width)
             }
             }
             HLine(color: .black)
             }*/
            //}
            // }
        }
    }
    
    struct GameView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                GameView(showGrid: true)
                    .previewLayout(.sizeThatFits)
                .environment(\.colorScheme, .light)
                .environmentObject(SharedUserState())
                GameView(showGrid: true)
                    .previewLayout(.sizeThatFits)
                .environment(\.colorScheme, .dark)
                .environmentObject(SharedUserState())
            }
        }
    }
}
