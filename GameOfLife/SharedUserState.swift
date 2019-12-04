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
    @Published var driver = GameOfLifeDriver(size: (20, 40))
}
