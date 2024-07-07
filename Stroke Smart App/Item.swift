//
//  Item.swift
//  Stroke Smart App
//
//  Created by Blanco, Ryan on 7/6/24.
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
