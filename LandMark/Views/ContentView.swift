//
//  ContentView.swift
//  LandMarks
//
//  Created by 성현주 on 10/9/18.
//

import SwiftUI


struct ContentView: View {
    @State private var selection: Tab = .featured

    
    enum Tab {
            case featured
            case list
        }
    
    var body: some View {
            TabView(selection: $selection) {
                LandmarkList()
                    .tabItem {
                        Label("List", systemImage: "list.bullet")
                    }
                    .tag(Tab.list)
                CategoryHome()
                    .tabItem {
                        Label("Featured", systemImage: "star")
                    }
                    .tag(Tab.featured)
            }
        }
    }


#Preview {
    ContentView()
        .environment(ModelData())

}
