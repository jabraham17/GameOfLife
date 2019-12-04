//
//  RunningMan.swift
//  GameOfLife
//
//  Created by Jacob Abraham on 12/2/19.
//  Copyright © 2019 MJA. All rights reserved.
//

import SwiftUI


func manPath() -> Path {
    var path = Path()
    path.move(to: CGPoint(x: 58.5, y: 19))
    path.addCurve(to: CGPoint(x: 68, y: 9.5), control1: CGPoint(x: 63.7467051, y: 19), control2: CGPoint(x: 68, y: 14.7467051))
    path.addCurve(to: CGPoint(x: 58.5, y: 0), control1: CGPoint(x: 68, y: 4.25329488), control2: CGPoint(x: 63.7467051, y: 0))
    path.addCurve(to: CGPoint(x: 49, y: 9.5), control1: CGPoint(x: 53.2532949, y: 0), control2: CGPoint(x: 49, y: 4.25329488))
    path.addCurve(to: CGPoint(x: 58.5, y: 19), control1: CGPoint(x: 49, y: 16.2175144), control2: CGPoint(x: 51.7824856, y: 19))
    path.closeSubpath()
    path.move(to: CGPoint(x: 44, y: 14))
    path.addCurve(to: CGPoint(x: 48.1425072, y: 16.1991734), control1: CGPoint(x: 45.7236053, y: 14), control2: CGPoint(x: 47.2435137, y: 14.8721304))
    path.addLine(to: CGPoint(x: 57.3288962, y: 21.5028727))
    path.addLine(to: CGPoint(x: 57.5, y: 21.5))
    path.addCurve(to: CGPoint(x: 62.5, y: 26.5), control1: CGPoint(x: 60.2614237, y: 21.5), control2: CGPoint(x: 62.5, y: 23.7385763))
    path.addLine(to: CGPoint(x: 62.5, y: 43))
    path.addLine(to: CGPoint(x: 73, y: 43))
    path.addCurve(to: CGPoint(x: 78, y: 48), control1: CGPoint(x: 75.7614237, y: 43), control2: CGPoint(x: 78, y: 45.2385763))
    path.addCurve(to: CGPoint(x: 73, y: 53), control1: CGPoint(x: 78, y: 50.7614237), control2: CGPoint(x: 75.7614237, y: 53))
    path.addLine(to: CGPoint(x: 58, y: 53))
    path.addCurve(to: CGPoint(x: 54.2236213, y: 51.2771527), control1: CGPoint(x: 56.4922376, y: 53), control2: CGPoint(x: 55.1403496, y: 52.3326224))
    path.addCurve(to: CGPoint(x: 52.5, y: 47.5), control1: CGPoint(x: 53.1673776, y: 50.3596504), control2: CGPoint(x: 52.5, y: 49.0077624))
    path.addLine(to: CGPoint(x: 52.5, y: 37.714))
    path.addLine(to: CGPoint(x: 41.694, y: 56.43))
    path.addLine(to: CGPoint(x: 52.9330127, y: 62.919873))
    path.addCurve(to: CGPoint(x: 54.7188902, y: 64.6731027), control1: CGPoint(x: 53.6944251, y: 63.3594746), control2: CGPoint(x: 54.2964739, y: 63.9690993))
    path.addCurve(to: CGPoint(x: 56.5, y: 68.5), control1: CGPoint(x: 55.8075982, y: 65.590179), control2: CGPoint(x: 56.5, y: 66.96423))
    path.addLine(to: CGPoint(x: 56.5, y: 94.5))
    path.addCurve(to: CGPoint(x: 51.5, y: 99.5), control1: CGPoint(x: 56.5, y: 97.2614237), control2: CGPoint(x: 54.2614237, y: 99.5))
    path.addCurve(to: CGPoint(x: 46.5, y: 94.5), control1: CGPoint(x: 48.7385763, y: 99.5), control2: CGPoint(x: 46.5, y: 97.2614237))
    path.addLine(to: CGPoint(x: 46.5, y: 70.753))
    path.addLine(to: CGPoint(x: 30.5, y: 61.515))
    path.addLine(to: CGPoint(x: 30.5, y: 82.5))
    path.addCurve(to: CGPoint(x: 26.3118236, y: 87.4344283), control1: CGPoint(x: 30.5, y: 84.9850032), control2: CGPoint(x: 28.6871591, y: 87.0465948))
    path.addCurve(to: CGPoint(x: 24, y: 88), control1: CGPoint(x: 25.6204578, y: 87.7957696), control2: CGPoint(x: 24.8340792, y: 88))
    path.addLine(to: CGPoint(x: 5, y: 88))
    path.addCurve(to: CGPoint(x: 0, y: 83), control1: CGPoint(x: 2.23857625, y: 88), control2: CGPoint(x: 0, y: 85.7614237))
    path.addCurve(to: CGPoint(x: 5, y: 78), control1: CGPoint(x: 0, y: 80.2385763), control2: CGPoint(x: 2.23857625, y: 78))
    path.addLine(to: CGPoint(x: 20.5, y: 78))
    path.addLine(to: CGPoint(x: 20.5, y: 56.5))
    path.addCurve(to: CGPoint(x: 21.5355433, y: 53.4527763), control1: CGPoint(x: 20.5, y: 55.3530929), control2: CGPoint(x: 20.8861555, y: 54.2963772))
    path.addCurve(to: CGPoint(x: 21.7727587, y: 52.9365335), control1: CGPoint(x: 21.5972343, y: 53.2772034), control2: CGPoint(x: 21.6759908, y: 53.1041403))
    path.addLine(to: CGPoint(x: 38.478, y: 24))
    path.addLine(to: CGPoint(x: 27.082, y: 24))
    path.addLine(to: CGPoint(x: 18.580127, y: 38.7272413))
    path.addCurve(to: CGPoint(x: 11.75, y: 40.5573684), control1: CGPoint(x: 17.1994151, y: 41.1187045), control2: CGPoint(x: 14.1414631, y: 41.9380802))
    path.addCurve(to: CGPoint(x: 9.91987298, y: 33.7272413), control1: CGPoint(x: 9.35853688, y: 39.1766565), control2: CGPoint(x: 8.53916111, y: 36.1187045))
    path.addLine(to: CGPoint(x: 19.419873, y: 17.2727587))
    path.addCurve(to: CGPoint(x: 21.7744028, y: 15.1792808), control1: CGPoint(x: 19.9804937, y: 16.3017352), control2: CGPoint(x: 20.8176349, y: 15.589896))
    path.addCurve(to: CGPoint(x: 25, y: 14), control1: CGPoint(x: 22.6449118, y: 14.4436715), control2: CGPoint(x: 23.7706434, y: 14))
    path.addLine(to: CGPoint(x: 44, y: 14))
    path.closeSubpath()
    return path
}

struct Man: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 58.5, y: 19))
        path.addCurve(to: CGPoint(x: 68, y: 9.5), control1: CGPoint(x: 63.7467051, y: 19), control2: CGPoint(x: 68, y: 14.7467051))
        path.addCurve(to: CGPoint(x: 58.5, y: 0), control1: CGPoint(x: 68, y: 4.25329488), control2: CGPoint(x: 63.7467051, y: 0))
        path.addCurve(to: CGPoint(x: 49, y: 9.5), control1: CGPoint(x: 53.2532949, y: 0), control2: CGPoint(x: 49, y: 4.25329488))
        path.addCurve(to: CGPoint(x: 58.5, y: 19), control1: CGPoint(x: 49, y: 16.2175144), control2: CGPoint(x: 51.7824856, y: 19))
        path.closeSubpath()
        path.move(to: CGPoint(x: 44, y: 14))
        path.addCurve(to: CGPoint(x: 48.1425072, y: 16.1991734), control1: CGPoint(x: 45.7236053, y: 14), control2: CGPoint(x: 47.2435137, y: 14.8721304))
        path.addLine(to: CGPoint(x: 57.3288962, y: 21.5028727))
        path.addLine(to: CGPoint(x: 57.5, y: 21.5))
        path.addCurve(to: CGPoint(x: 62.5, y: 26.5), control1: CGPoint(x: 60.2614237, y: 21.5), control2: CGPoint(x: 62.5, y: 23.7385763))
        path.addLine(to: CGPoint(x: 62.5, y: 43))
        path.addLine(to: CGPoint(x: 73, y: 43))
        path.addCurve(to: CGPoint(x: 78, y: 48), control1: CGPoint(x: 75.7614237, y: 43), control2: CGPoint(x: 78, y: 45.2385763))
        path.addCurve(to: CGPoint(x: 73, y: 53), control1: CGPoint(x: 78, y: 50.7614237), control2: CGPoint(x: 75.7614237, y: 53))
        path.addLine(to: CGPoint(x: 58, y: 53))
        path.addCurve(to: CGPoint(x: 54.2236213, y: 51.2771527), control1: CGPoint(x: 56.4922376, y: 53), control2: CGPoint(x: 55.1403496, y: 52.3326224))
        path.addCurve(to: CGPoint(x: 52.5, y: 47.5), control1: CGPoint(x: 53.1673776, y: 50.3596504), control2: CGPoint(x: 52.5, y: 49.0077624))
        path.addLine(to: CGPoint(x: 52.5, y: 37.714))
        path.addLine(to: CGPoint(x: 41.694, y: 56.43))
        path.addLine(to: CGPoint(x: 52.9330127, y: 62.919873))
        path.addCurve(to: CGPoint(x: 54.7188902, y: 64.6731027), control1: CGPoint(x: 53.6944251, y: 63.3594746), control2: CGPoint(x: 54.2964739, y: 63.9690993))
        path.addCurve(to: CGPoint(x: 56.5, y: 68.5), control1: CGPoint(x: 55.8075982, y: 65.590179), control2: CGPoint(x: 56.5, y: 66.96423))
        path.addLine(to: CGPoint(x: 56.5, y: 94.5))
        path.addCurve(to: CGPoint(x: 51.5, y: 99.5), control1: CGPoint(x: 56.5, y: 97.2614237), control2: CGPoint(x: 54.2614237, y: 99.5))
        path.addCurve(to: CGPoint(x: 46.5, y: 94.5), control1: CGPoint(x: 48.7385763, y: 99.5), control2: CGPoint(x: 46.5, y: 97.2614237))
        path.addLine(to: CGPoint(x: 46.5, y: 70.753))
        path.addLine(to: CGPoint(x: 30.5, y: 61.515))
        path.addLine(to: CGPoint(x: 30.5, y: 82.5))
        path.addCurve(to: CGPoint(x: 26.3118236, y: 87.4344283), control1: CGPoint(x: 30.5, y: 84.9850032), control2: CGPoint(x: 28.6871591, y: 87.0465948))
        path.addCurve(to: CGPoint(x: 24, y: 88), control1: CGPoint(x: 25.6204578, y: 87.7957696), control2: CGPoint(x: 24.8340792, y: 88))
        path.addLine(to: CGPoint(x: 5, y: 88))
        path.addCurve(to: CGPoint(x: 0, y: 83), control1: CGPoint(x: 2.23857625, y: 88), control2: CGPoint(x: 0, y: 85.7614237))
        path.addCurve(to: CGPoint(x: 5, y: 78), control1: CGPoint(x: 0, y: 80.2385763), control2: CGPoint(x: 2.23857625, y: 78))
        path.addLine(to: CGPoint(x: 20.5, y: 78))
        path.addLine(to: CGPoint(x: 20.5, y: 56.5))
        path.addCurve(to: CGPoint(x: 21.5355433, y: 53.4527763), control1: CGPoint(x: 20.5, y: 55.3530929), control2: CGPoint(x: 20.8861555, y: 54.2963772))
        path.addCurve(to: CGPoint(x: 21.7727587, y: 52.9365335), control1: CGPoint(x: 21.5972343, y: 53.2772034), control2: CGPoint(x: 21.6759908, y: 53.1041403))
        path.addLine(to: CGPoint(x: 38.478, y: 24))
        path.addLine(to: CGPoint(x: 27.082, y: 24))
        path.addLine(to: CGPoint(x: 18.580127, y: 38.7272413))
        path.addCurve(to: CGPoint(x: 11.75, y: 40.5573684), control1: CGPoint(x: 17.1994151, y: 41.1187045), control2: CGPoint(x: 14.1414631, y: 41.9380802))
        path.addCurve(to: CGPoint(x: 9.91987298, y: 33.7272413), control1: CGPoint(x: 9.35853688, y: 39.1766565), control2: CGPoint(x: 8.53916111, y: 36.1187045))
        path.addLine(to: CGPoint(x: 19.419873, y: 17.2727587))
        path.addCurve(to: CGPoint(x: 21.7744028, y: 15.1792808), control1: CGPoint(x: 19.9804937, y: 16.3017352), control2: CGPoint(x: 20.8176349, y: 15.589896))
        path.addCurve(to: CGPoint(x: 25, y: 14), control1: CGPoint(x: 22.6449118, y: 14.4436715), control2: CGPoint(x: 23.7706434, y: 14))
        path.addLine(to: CGPoint(x: 44, y: 14))
        path.closeSubpath()
        
        //comes from Sketch
        //let scaleX = rect.width / 78
        //let scaleY = rect.height / 100
        //scale the image
        //return path.applying(CGAffineTransform.init(scaleX: scaleX, y: scaleY))
        
        let bounds = path.boundingRect
        let scaleX = rect.width / bounds.width
        let scaleY = rect.height / bounds.height
        //scale the image
        return path.applying(CGAffineTransform.init(scaleX: scaleX, y: scaleY))

    }
}

//fit a shape in
struct Fit: Shape {
    let path: Path
    func path(in rect: CGRect) -> Path {
        let bounds = path.boundingRect
        let scaleX = rect.width / bounds.width
        let scaleY = rect.height / bounds.height
        //scale the image
        return path.applying(CGAffineTransform.init(scaleX: scaleX, y: scaleY))
    }
}


struct RunningMan: View {
    var body: some View {
        GeometryReader { geometry in
            Man()
        }
        
    }
}

struct RunningMan_Previews: PreviewProvider {
    static var previews: some View {
        RunningMan()
            .previewLayout(.sizeThatFits)
    }
}
