//
//  ControlOverlay.swift
//  GameOfLife
//
//  Created by Jacob Abraham on 12/3/19.
//  Copyright © 2019 MJA. All rights reserved.
//

import SwiftUI

struct ControlOverlay: View {
    
    @EnvironmentObject var sharedState: SharedUserState
    var opacity: Double {
        //if running, set opacacity to 50%
        return self.sharedState.running ? 0.5 : 1
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                HStack {
                    Button ( action: {
                        print("Size")
                    }) {
                        Text("Size")
                            .foregroundColor(Color.init("Text"))
                            .padding(.all, 5)
                            .background(Color.init("Theme"))
                            .cornerRadius(20)
                            .opacity(self.opacity)
                    }
                    .padding(.leading, 10)
                    //if running, not clickable
                    .disabled(self.sharedState.running)
                    Spacer()
                    Button ( action: {
                        print("Settings")
                    }) {
                        Text("Settings")
                            .foregroundColor(Color.init("Text"))
                            .padding(.all, 5)
                            .background(Color.init("Theme"))
                            .cornerRadius(20)
                            .opacity(self.opacity)
                    }
                    .padding(.trailing, 10)
                    //if running, not clickable
                    .disabled(self.sharedState.running)
                }
                .padding()
                .background(Color.clear)
                Spacer()
                Button(action: {
                    self.sharedState.running.toggle()
                    //set the object to change
                    self.sharedState.objectWillChange.send()
                    
                    //start running the simulation
                    if self.sharedState.running {
                        self.sharedState.driver.startGame()
                    }
                    else {
                        self.sharedState.driver.stopGame()
                    }
                }) {
                    GeometryReader { geo in
                        Man().fill(Color.init("Text"))
                            .padding(min(geo.size.width, geo.size.height) / 9)
                            .background(Circle().fill(Color.init("Theme")))
                        .opacity(self.opacity)
                        
                    }
                }
                .scaledToFit()
                .padding(.init(arrayLiteral: .leading, .trailing), geo.size.width/2.4)
                .padding(.bottom, 10)
                
            }
            .background(Color.clear)
        }
    }
}

struct ControlOverlay_Previews: PreviewProvider {
    static var previews: some View {
        ControlOverlay()
        .environmentObject(SharedUserState())
    }
}
