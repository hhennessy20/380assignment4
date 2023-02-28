//
//  SVG.swift
//  SierpinskiSwift
//
//  A class that can be used to generate
//  a basic SVG file.

import Foundation

open class SVG {
    // YOUR CODE HERE
    var svgFile = String()
    // Initialize the SVG file with commands that will create a
    // width x height canvas
    public init(width: UInt, height: UInt) {
        // YOUR CODE HERE
        svgFile = svgFile + "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
        svgFile = svgFile + "<svg version=\"1.1\" baseProfile=\"full\" width=\"" + width + "\" height=\"" + height + "\" xmlns=\"http://www.w3.org/2000/svg\">\n"

    }
    
    // YOUR CODE HERE
    func draw_line(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int, _ color: String) {
        svgFile = svgFile + "<line x1=\"" + x1 + "\" y1=\"" + y1 + "\" x2=\"" + x2 + "\" y2=\"" + y2 + "\" stroke=\"" + color + "\" />\n"
    }
    // Write the SVG file to disk
    public func write(filePath: String) {
        // YOUR CODE HERE
        svgFile = svgFile + "</svg>\n"
        svgFile.write(toFile: filePath, atomically: true, encoding: 4)
    }
}
