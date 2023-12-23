//
//  LandmarkRow.swift
//  LandMark
//
//  Created by 성현주 on 10/22/23.
//

import SwiftUI


struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}


#Preview("gruop") {
    let landmarks = ModelData().landmarks
    return Group {
    LandmarkRow(landmark: landmarks[0])
    LandmarkRow(landmark: landmarks[1])
    }
}
