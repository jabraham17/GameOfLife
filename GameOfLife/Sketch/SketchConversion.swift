//
//  SketchConversion.swift
//  GameOfLife
//
//  Created by Jacob Abraham on 12/2/19.
//  Copyright © 2019 MJA. All rights reserved.
//

import Foundation
import SwiftUI

//set of structs and functions that contain information from sketch
//and the knowldge to convert to swiftui vector graphics
struct Board {
    var width: CGFloat = 0
    var height: CGFloat = 0
}

//contains the parameters from sketch
struct ShapeParameters {
    var board: Board = Board()
    var width: CGFloat = 0
    var height: CGFloat = 0
    var angle: Angle = Angle(degrees: 0)
    var x: CGFloat = 0
    var y: CGFloat = 0
    var cornerRadius: CGFloat = 0
    
    //return the width scaled to a different width
    func getWidth(scaledTo: CGFloat) -> CGFloat {
        //convert width to percent
        let percent = width / board.width
        return scaledTo * percent
    }
    //return the height scaled to a different height
    func getHeight(scaledTo: CGFloat) -> CGFloat {
        //convert height to percent
        let percent = height / board.height
        return scaledTo * percent
    }
    //return the x scaled to a different x
    func getX(scaledTo: CGFloat) -> CGFloat {
        //convert x to percent
        let percent = x / board.width
        return scaledTo * percent
    }
    //return the y scaled to a different y
    func getY(scaledTo: CGFloat) -> CGFloat {
        //convert y to percent
        let percent = y / board.height
        return scaledTo * percent
    }
    
    //return the x scaled, but as a middle component
    func getMiddleX(scaledTo: CGFloat) -> CGFloat {
        return getX(scaledTo: scaledTo) + (getWidth(scaledTo: scaledTo) / 2)
    }
    //return the y scaled, but as a middle component
    func getMiddleY(scaledTo: CGFloat) -> CGFloat {
        return getY(scaledTo: scaledTo) + (getHeight(scaledTo: scaledTo) / 2)
    }
    
    func getCircle(withSize size: CGSize) -> some View {
        let width = getWidth(scaledTo: size.width)
        let height = getHeight(scaledTo: size.height)
        let x = getMiddleX(scaledTo: size.width)
        let y = getMiddleY(scaledTo: size.height)
        
        return Circle()
            .frame(width: width, height: height)
            .position(x: x, y: y)
    }
    /*func getRectangle(withSize size: CGSize) -> some View {   let width = getWidth(scaledTo: size.width)
        let height = getHeight(scaledTo: size.height)
        let x = getMiddleX(scaledTo: size.width)
        let y = getMiddleY(scaledTo: size.height)
        
        return RoundedRectangle(cornerRadius: cornerRadius)
            .rotation(angle)
            .frame(width: width, height: height)
            .position(x: x, y: y)
    }*/
    func getRectangle(withSize size: CGSize) -> some View {   let width = self.width
        let height = self.height
        let x = self.x + (width / 2)
        let y = self.y + (height / 2)
        
        return RoundedRectangle(cornerRadius: cornerRadius)
            .rotation(angle)
            .frame(width: width, height: height)
            .position(x: x, y: y)
    }
}
