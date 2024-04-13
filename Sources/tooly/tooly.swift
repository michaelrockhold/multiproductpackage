// The Swift Programming Language
// https://docs.swift.org/swift-book
// 
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import ArgumentParser
import libby

@main
struct tooly: ParsableCommand {
    mutating func run() throws {
        let lib = Libby()
        print("Hello, \(lib.str())")
    }
}
