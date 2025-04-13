//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Aakash Gupta on 11/04/25.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
