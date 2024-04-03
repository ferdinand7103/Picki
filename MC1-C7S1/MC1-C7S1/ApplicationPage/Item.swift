//
//  Item.swift
//  MC1-C7S1
//
//  Created by Reynard Octavius Tan on 19/03/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

