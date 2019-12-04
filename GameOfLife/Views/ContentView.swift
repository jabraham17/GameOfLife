//
//  ContentView.swift
//  GameOfLife
//
//  Created by Jacob Abraham on 11/25/19.
//  Copyright © 2019 MJA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var sharedState: SharedUserState
    
    var body: some View {
        ZStack {
            //color the background
            Color.init("Background")
                .edgesIgnoringSafeArea(.all)
            //show the actual view
            VStack {
                //zstack to display on top of each other
                ZStack(alignment: Alignment.topLeading) {
                    ControlOverlay()
                        .zIndex(10)
                    
                    GameView(showGrid: true)
                        .zIndex(5)
                    
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(["iPhone XR", "iPhone 8"], id: \.self) { deviceName in
                ContentView()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .environment(\.colorScheme, .light)
                    .environmentObject(SharedUserState())
            }
            ForEach(["iPhone XR", "iPhone 8"], id: \.self) { deviceName in
                ContentView()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .environment(\.colorScheme, .dark)
                    .environmentObject(SharedUserState())
            }
        }
    }
}
