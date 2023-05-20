//
//  CommunityCardView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import SwiftUI

struct CommunityCardView: View {
    @Environment(\.openURL) private  var openURL
    @ObservedObject var communityViewModel: CommunityViewModel
    var body: some View {
        ZStack {
            Image(communityViewModel.community.imageUrl).resizable().frame(width: 150, height: 150).opacity(0.8).cornerRadius(10)
            VStack {
                Text(communityViewModel.community.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .padding(.horizontal, 10)
                Text(communityViewModel.community.subTitle ?? "").font(.subheadline).fontWeight(.semibold).foregroundColor(.white)
            }.frame(width: 150)
        }.onTapGesture {
            openURL(URL(string: communityViewModel.community.url)!)
        }
    }
}

struct CommunityCardView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityCardView(communityViewModel: CommunityViewModel(community: MockData().community))
    }
}
