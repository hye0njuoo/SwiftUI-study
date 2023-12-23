//
//  LandMarkApp.swift
//  LandMark
//
//  Created by 성현주 on 10/30/23.
//

import SwiftUI

@main
struct LandMarkApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)

        }
    }
}
