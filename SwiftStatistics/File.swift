//
//  File.swift
//  SwiftStatistics
//
//  Created by Bradley Hilton on 5/19/15.
//  Copyright (c) 2015 Skyvive. All rights reserved.
//

import Foundation

struct File {
    
    let name: String
    let lineCount: Int
    
    init(name: String, file: NSString) {
        self.name = name
        self.lineCount = file.componentsSeparatedByString("\n").count
    }
    
}