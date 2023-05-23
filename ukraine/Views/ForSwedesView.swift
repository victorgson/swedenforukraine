//
//  ForSwedesView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-02.
//

import SwiftUI

struct ForSwedesView: View {
    @ObservedObject var topicForSwedes = TopicForSwedesListViewModel()
    var body: some View {
            VStack{
                ScrollView {
                    ForEach(topicForSwedes.topicViewModels) { topicViewModel in
                        TopicCardView(topicViewModel: topicViewModel, isWide: true)
                    }
                }
            }
    }
}
            
            

struct ForSwedesView_Previews: PreviewProvider {
    static var previews: some View {
        ForSwedesView()
    }
}
