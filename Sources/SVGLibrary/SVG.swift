//
//  SVG.swift
//  SierpinskiSwift
//
//  A class that can be used to generate
//  a basic SVG file.

import Foundation

open class SVG {
    // YOUR CODE HERE
    var svgFile = NSString()
    // Initialize the SVG file with commands that will create a
    // width x height canvas
    public init(width: UInt, height: UInt) {
        // YOUR CODE HERE
        let canvas = CGSize(width: width, height: height)
    }
    
    // YOUR CODE HERE
    func draw_line(x1: Int,y1: Int, x2: Int, y2: Int, color: String) {
        contents_add("<line x1=\"%d\" y1=\"%d\" x2=\"%d\" y2=\"%d\" stroke=\"%s\" />\n", x1, y1, x2, y2, color);
    }
    // Write the SVG file to disk
    public func write(filePath: String) {
        // YOUR CODE HERE
        svgFile.write(toFile: filePath, atomically: true, encoding: 4)
    }
}
