//
//  ContentView.swift
//  Assignment3
//
//  Created by 성현주 on 12/23/23.
//

import SwiftUI
import YDS_SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = NetworkArticles()
    @State private var profileImage: Image?
    
    var body: some View {
        VStack{
            GeometryReader{ geometry in
                VStack(spacing:18){
                    
                    YDSLabel(
                        text:viewModel.articles.first?.title ?? "로딩중..",
                        typoStyle: .title2,
                        maxWidth: geometry.size.width,
                        alignment: .left)
                    
                    HStack {
                        ForEach(viewModel.articles.first?.tagList ?? [], id: \.self) { tag in
                            YDSBadge(text: tag,
                                     icon: YDSIcon.clipLine,
                                     color: YDSItemColor.emerald.backgroundColor)
                            .padding(.trailing, 8)
                        }
                    }
                    
                    YDSLabel(
                        text:viewModel.articles.first?.body ?? "",
                        typoStyle: .body1,
                        maxWidth: geometry.size.width,
                        alignment: .left)
                    
                    HStack{
                        if let imageURL = URL(string: viewModel.articles.first?.author.image ?? "") {
                            AsyncImage(url: imageURL)
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                        }
                        
                        YDSLabel(
                            text: viewModel.articles.first?.author.username ?? "",
                            typoStyle: .body1,
                            maxWidth: geometry.size.width
                        )
                        
                        if(viewModel.articles.first?.author.following == true ){
                            YDSIcon.starFilled
                        }else{
                            YDSIcon.starLine
                        }
                    }
                }
            }
        }
        .padding(18)
    }
}

#Preview {
    ContentView()
}

