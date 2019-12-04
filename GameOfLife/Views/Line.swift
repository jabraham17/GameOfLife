//
//  Line.swift
//  GameOfLife
//
//  Created by Jacob Abraham on 11/26/19.
//  Copyright © 2019 MJA. All rights reserved.
//

import SwiftUI

let THICKNESS: CGFloat = 2

struct VLine: View {
    var color: Color
    
    var body: some View {
        Rectangle()
            .frame(minWidth: THICKNESS, idealWidth: THICKNESS, maxWidth: THICKNESS)
            .background(color)
        
    }
}

struct HLine: View {
    var color: Color
    
    var body: some View {
        Rectangle()
            .frame(minHeight: THICKNESS, idealHeight: THICKNESS, maxHeight: THICKNESS)
            .background(color)
    }
}


struct Line_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VLine(color: .black)
                .previewLayout(.fixed(width: 10, height: 200))
            HLine(color: .black)
                .previewLayout(.fixed(width: 200, height: 10))
        }
    }
}
