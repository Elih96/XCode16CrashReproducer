//
//  CrashReproducerApp.swift
//  CrashReproducer
//
//  Created by Elie Hage on 15/10/2024.
//

import SwiftUI

@main
struct CrashReproducerApp: App {
    var body: some Scene {
        WindowGroup {
            Text("CrashReproducer")
                .task {
                    let reproducer = Reproducer()
                    let _ = await reproducer.reproduce()
                }
        }
    }
}
