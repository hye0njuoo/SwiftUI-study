//
//  LandMarkDetail.swift
//  LandMark
//
//  Created by 성현주 on 10/22/23.
//

import SwiftUI

struct LandMarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landMarkIndex : Int{
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData

        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                        .frame(height: 300)


            CircleImage(image: landmark.image)
                        .offset(y: -130)
                        .padding(.bottom, -130)


                    VStack(alignment: .leading) {
                        HStack{
                            Text(landmark.name)
                                .font(.title)
                            FavoriteButton(isSet: $modelData.landmarks[landMarkIndex].isFavorite)
                        }


                        HStack {
                            Text(landmark.park)
                            Spacer()
                            Text(landmark.state)
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)


                        Divider()


                        Text("About \(landmark.name)")
                            .font(.title2)
                        Text(landmark.description)
                    }
                    .padding()


                    Spacer()
                }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
        return LandMarkDetail(landmark: modelData.landmarks[0])
            .environment(modelData)
}
