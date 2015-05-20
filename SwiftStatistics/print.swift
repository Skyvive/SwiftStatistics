//
//  print.swift
//  SwiftStatistics
//
//  Created by Bradley Hilton on 5/20/15.
//  Copyright (c) 2015 Skyvive. All rights reserved.
//

import Foundation

let MAX_COUNT_LENGTH = 8

func print(files: [File]) {
    let length = longestNameLength(files)
    println(divider(length))
    for file in sortedFiles(files) {
        println("\(file.name) \(whiteSpace(file.name, length, file.lineCount)) \(file.lineCount)")
    }
    println(divider(length))
    let total = files.reduce(0) { $0 + $1.lineCount }
    let totalName = "Total"
    println("\(totalName) \(whiteSpace(totalName, length, total)) \(total)")
}

func sortedFiles(files: [File]) -> [File] {
    return files.sorted { return $0.name < $1.name }
}

func longestNameLength(files: [File]) -> Int {
    var length = 0
    for file in files {
        if file.name.length > length {
            length = file.name.length
        }
    }
    return length
}

func divider(longestNameLength: Int) -> String {
    var whiteSpace = NSMutableString()
    for i in 0..<(longestNameLength + MAX_COUNT_LENGTH + 2) {
        whiteSpace.appendString("-")
    }
    return whiteSpace as String
}

func whiteSpace(name: String, longestNameLength: Int, count: Int) -> String {
    var whiteSpaceLength = (longestNameLength - name.length) + (MAX_COUNT_LENGTH - "\(count)".length)
    var whiteSpace = NSMutableString()
    for i in 0..<whiteSpaceLength {
        whiteSpace.appendString(" ")
    }
    return whiteSpace as String
}

extension String {
    
    var length: Int { return (self as NSString).length }
    
}
