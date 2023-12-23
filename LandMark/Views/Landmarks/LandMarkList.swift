//
//  LandMarkList.swift
//  LandMark
//
//  Created by 성현주 on 10/22/23.
//

import SwiftUI


struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmark: [Landmark] {
        modelData.landmarks.filter {landMark in
            (!showFavoritesOnly || landMark.isFavorite)
            
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorite only")
                })
                ForEach(filteredLandmark) { landmark in
                    NavigationLink {
                        LandMarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
            
        }
    detail: {
            Text("Select a Landmark")
        }
    }
        
}


#Preview {
    LandmarkList()
        .environment(ModelData())

}
