//
//  utils.swift
//  SwiftStatistics
//
//  Created by Bradley Hilton on 5/19/15.
//  Copyright (c) 2015 Skyvive. All rights reserved.
//

import Foundation

func get() -> String {
    var input = NSFileHandle.fileHandleWithStandardInput().availableData
    return NSString(data: input, encoding:NSUTF8StringEncoding) as! String
}