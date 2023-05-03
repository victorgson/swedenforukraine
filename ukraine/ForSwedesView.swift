//
//  ForSwedesView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-02.
//

import SwiftUI

struct ForSwedesView: View {
    
    @ObservedObject var topicForSwedes = TopicForSwedesListViewModel()
    
    let columns = [GridItem(.adaptive(minimum: 100)), GridItem(.adaptive(minimum: 100))]
    let linearGradient = LinearGradient(colors: [.blue, .yellow, .blue], startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        NavigationView {
            VStack{
                ScrollView {
                    HeaderView()
                    
                    LazyVGrid(columns: columns) {
                        ForEach(topicForSwedes.topicViewModels) { topicViewModel in
                            TopicCardView(topicViewModel: topicViewModel)
                        }
                    }
                    
                }
            }.background(linearGradient)
         
        }
    }
}
            
            

struct ForSwedesView_Previews: PreviewProvider {
    static var previews: some View {
        ForSwedesView()
    }
}
