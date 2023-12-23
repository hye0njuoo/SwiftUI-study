//
//  ProfileHost.swift
//  LandMark
//
//  Created by 성현주 on 11/28/23.
//

import SwiftUI


struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}


#Preview {
    ProfileHost()
}
