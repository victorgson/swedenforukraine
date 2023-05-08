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
            Image(communityViewModel.community.imageUrl).resizable().frame(width: 150, height: 150).opacity(0.8).cornerRadius(10)
            Text(communityViewModel.community.title).font(.title).fontWeight(.bold).foregroundColor(.white)
        }
    }
}

//struct CommunityCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CommunityCardView()
//    }
//}
