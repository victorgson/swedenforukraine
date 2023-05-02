//
//  ForSwedesView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-02.
//

import SwiftUI

struct ForSwedesView: View {
    var body: some View {
        VStack {
            
            ScrollView(.vertical, showsIndicators: false) {
                Section("Donera") {
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10).frame(maxWidth: .infinity, maxHeight: 200).foregroundColor(.white).padding()
                        
                        Text("Donera").padding().foregroundColor(.red)
                    }
                    
                }

                    

            }
           
        }.frame(maxWidth: .infinity, maxHeight: .infinity) .background(LinearGradient(colors: [.blue, .yellow, .blue], startPoint: .top, endPoint: .bottom))
        
       
    }
}

struct ForSwedesView_Previews: PreviewProvider {
    static var previews: some View {
        ForSwedesView()
    }
}
