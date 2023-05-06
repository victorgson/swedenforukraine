//
//  WebViewNavigationBar.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import SwiftUI

struct WebViewNavigationBar: View {
    @ObservedObject var viewModel: WebViewModel
    
    var body: some View {
            VStack(spacing: 0) {
                Divider()
                HStack {
                    Spacer()
                    Button(action: {
                        self.viewModel.webViewNavigationPublisher.send(.backward)
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 20, weight: .regular))
                            .imageScale(.large)
                            .foregroundColor(.gray)
                    }
                    Group {
                        Spacer()
                        Divider()
                        Spacer()
                    }
                    Button(action: {
                        self.viewModel.webViewNavigationPublisher.send(.forward)
                    }) {
                        Image(systemName: "chevron.right")
                            .font(.system(size: 20, weight: .regular))
                            .imageScale(.large)
                            .foregroundColor(.gray)
                    }
                    Group {
                        Spacer()
                        Divider()
                        Spacer()
                    }
                    Button(action: {
                        self.viewModel.webViewNavigationPublisher.send(.share)
                    }) {
                        Image(systemName: "square.and.arrow.up")
                            .font(.system(size: 20, weight: .regular))
                            .imageScale(.large)
                            .foregroundColor(.gray).padding(.bottom, 4)
                    }
                    Spacer()
                }.frame(height: 45)
                Divider()
            }
        }
}

struct WebViewNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        WebViewNavigationBar(viewModel: WebViewModel())
    }
}
