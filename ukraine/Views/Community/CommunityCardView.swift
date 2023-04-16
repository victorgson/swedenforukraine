//
//  CommunityCardView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import SwiftUI

struct CommunityCardView: View {
    
    @ObservedObject var communityViewModel: CommunityViewModel
    
    var body: some View {
        ZStack{
            AsyncImage(url: URL(string: "https://picsum.photos/180/180")) { image in
                image.opacity(0.8)
            } placeholder: {
                ProgressView()
            }.cornerRadius(10).shadow(radius: 10)
            Text(communityViewModel.community.title).font(.title).fontWeight(.bold).foregroundColor(.white)
        }
    }
}

//struct CommunityCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CommunityCardView()
//    }
//}
