//
//  CommunityScrollView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import SwiftUI

struct CommunityScrollView: View {
    
    @ObservedObject var communityListViewModel = CommunityListViewModel()
    var body: some View {
        Section("Ukrainian Communitys in Sweden") {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.fixed(180))]) {
                    ForEach(communityListViewModel.communityViewModel) { communityViewModel in
                        CommunityCardView(communityViewModel: communityViewModel)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct CommunityScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityScrollView()
    }
}