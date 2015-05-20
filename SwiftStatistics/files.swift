//
//  files.swift
//  SwiftStatistics
//
//  Created by Bradley Hilton on 5/19/15.
//  Copyright (c) 2015 Skyvive. All rights reserved.
//

import Foundation

func filesAtPath(path: String) -> [File] {
    var files = [File]()
    if let contents = NSFileManager.defaultManager().contentsOfDirectoryAtPath(path, error: nil) as? [String] {
        for item in contents {
            let path = path + "/" + item
            if item.hasSuffix(".swift") {
                if let file = NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding, error: nil) {
                    files.append(File(name: item, file: file))
                }
            } else {
                files += filesAtPath(path)
            }
        }
    }
    return files
}