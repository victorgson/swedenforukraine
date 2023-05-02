//
//  TopicCardView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import SwiftUI

struct TopicCardView: View {
    
    @ObservedObject var topicViewModel: TopicViewModel
    var body: some View {
        NavigationLink(destination: TopicDetailView(topic: topicViewModel.topic.subTopics)) {
            ZStack{
                AsyncImage(url: URL(string: topicViewModel.topic.imageUrl)) { image in
                    image.opacity(0.8).aspectRatio(contentMode: .fit).frame(minWidth: 100, maxWidth: 180, minHeight: 100, maxHeight: 180)
                } placeholder: {
                    ProgressView()
                }.cornerRadius(10)
                Text(topicViewModel.topic.title).font(.title).fontWeight(.bold).foregroundColor(.white)
            }
        }.buttonStyle(PlainButtonStyle()).shadow(radius: 10)
    }
}

//struct TopicCardView_Previews: PreviewProvider {
//    static var previews: some View {
////        TopicCardView(topicViewModel: TopicViewModel(topic: TopicModel(id: 1, title: "asd", description: "asd", subTopics: [, imageUrl: <#T##String#>)))
//    }
//}
