//
//  File.swift
//  GameOfLife
//
//  Created by Jacob Abraham on 12/3/19.
//  Copyright © 2019 MJA. All rights reserved.
//

import Combine
import SwiftUI

final class SharedUserState: ObservableObject {    
    @Published var running = false
    @Published var driver = GameOfLifeDriver(size: (40, 20))
    
    
    //pass any state change updates through to the driver
    var anyCancellable: AnyCancellable? = nil
    init() {
        anyCancellable = Publishers.CombineLatest($running, driver.$current).sink(receiveValue: {_ in
            self.objectWillChange.send()
        })
    }
}
