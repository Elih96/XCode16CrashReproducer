//
//  ContentView.swift
//  CrashReproducer
//
//  Created by Elie Hage on 15/10/2024.
//

import Foundation

public struct Reproducer: Sendable {
    
    func b() async -> String? {
        try? await Task.sleep(nanoseconds: 100_000_000)
        return nil
    }
    
    func a() async -> String? {
        try? await Task.sleep(nanoseconds: 100_000_000)
        return nil
    }
    
    func reproduce() async -> C? {
        async let _ = a()
        async let _ = b()
        let _ = A().arrayItems.map { _ in "123" }
        return nil
    }
    
}

public struct B: Sendable, Hashable, Codable {
    public let en: String
    public let ar: String
}

public struct C: Identifiable, Hashable, Sendable {
    
    public let id: String
    public let a: String
    public let b: String
    public let c: B
    public let d: B
    public let e: String
    
}

public struct A: Hashable, Sendable {
    public let arrayItems: [String] = []
}
