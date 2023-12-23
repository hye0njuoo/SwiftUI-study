//
//  FavoriteButton.swift
//  LandMark
//
//  Created by 성현주 on 11/5/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button{
            isSet.toggle()
        } label: {
            Label("Toggle Favorite",systemImage:  isSet ? "star.fill":"star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
        
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
