//
//  TopicDetailView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import SwiftUI

struct TopicDetailView: View {
    var topic: [SubTopicModel]
    @ObservedObject var viewModel: WebViewModel = WebViewModel()
    
    var body: some View {
        List {
            ForEach(topic) { topic in
                TopicDetailSectionView(topic: topic, viewModel: viewModel)
            }.listRowBackground(Color.white)
            
        }.listStyle(.insetGrouped)
            .scrollContentBackground(.hidden)
            .background(theme: .ukraine)
    }
}


struct TopicDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopicDetailView(topic: [SubTopicModel(id: 1, title: "asd", url: "", urlType: .website, description: "asd", imageUrl: "")], viewModel: WebViewModel())
    }
}
