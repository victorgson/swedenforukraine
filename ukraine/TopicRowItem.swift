//
//  TopicRowItem.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-10.
//

import SwiftUI

struct TopicRowItem: View {
    
    
    var items = [GridItem(.fixed(180), spacing: 16), GridItem(.fixed(180), spacing: 16)]
    var colors = ["red", "green", "blue"]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: items) {
                ForEach(1...10, id: \.self) { i in
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 180).foregroundColor(.white).shadow(radius: 5)
                        Text("LANGUAGE").font(.title).fontWeight(.bold)
                    }
                   
                }
            }
        }
    }
}

struct TopicRowItem_Previews: PreviewProvider {
    static var previews: some View {
        TopicRowItem()
    }
}
