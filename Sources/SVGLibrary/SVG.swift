//
//  SVG.swift
//  SierpinskiSwift
//
//  A class that can be used to generate
//  a basic SVG file.

import Foundation

open class SVG {

    //string containing SVG, will be written to file in write function
    var svgFile = String()

    // Initialize the SVG file with commands that will create a
    // width x height canvas
    public init(width: UInt, height: UInt) {
        svgFile = svgFile + "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
        svgFile = svgFile + "<svg version=\"1.1\" baseProfile=\"full\" width=\"" + String(width) + "\" height=\"" + String(height) + "\" xmlns=\"http://www.w3.org/2000/svg\">\n"

    }
    
    //Draw line in SVG file
    func draw_line(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int, _ color: String) {
        svgFile = svgFile + "<line x1=\"" + String(x1) + "\" y1=\"" + String(y1) + "\" x2=\"" + String(x2) + "\" y2=\"" + String(y2) + "\" stroke=\"" + color + "\" />\n"
    }

    //Draw triangle in SVG file
    public func draw_triangle(p1: Point, p2: Point, p3: Point) {
        draw_line(p1.x, p1.y, p2.x, p2.y, "black");
        draw_line(p2.x, p2.y, p3.x, p3.y, "black");
        draw_line(p3.x, p3.y, p1.x, p1.y, "black");
    }
    // Write the SVG file to disk
    public func write(filePath: String) {
        svgFile = svgFile + "</svg>\n"
         do {
            try svgFile.write(toFile: filePath, atomically: true, encoding: UInt(4))
        } catch {
            print("\(error)")
        }
    }
}
