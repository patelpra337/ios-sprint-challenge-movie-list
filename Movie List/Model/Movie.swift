//
//  Movie.swift
//  Movie List
//
//  Created by patelpra on 11/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    var name: String
    var isSeen: Bool
    
    init(name: String, isSeen: Bool = false) {
        self.name = name
        self.isSeen = isSeen
    }
}
