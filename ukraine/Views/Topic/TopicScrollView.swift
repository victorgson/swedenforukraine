//
//  TopicScrollView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import SwiftUI

struct TopicScrollView: View {
    
    var items = [GridItem(.fixed(120), spacing: 16), GridItem(.fixed(120), spacing: 16)]
    @ObservedObject var topicListViewModel = TopicListViewModel()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: items, alignment: .center) {
                ForEach(topicListViewModel.topicViewModels) { topicViewModel in
                    TopicCardView(topicViewModel: topicViewModel)
                }
            }.padding()
        }
    }
}

struct TopicScrollView_Previews: PreviewProvider {
    static var previews: some View {
        TopicScrollView()
    }
}
