//
//  WebViewModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import Foundation
import Combine

class WebViewModel : ObservableObject {
    var webViewNavigationPublisher = PassthroughSubject<WebViewNavigation, Never>()
    var showLoader = PassthroughSubject<Bool, Never>()
    var valuePublisher = PassthroughSubject<String, Never>()
    var showWebTitle = PassthroughSubject<String, Never>()
}

enum WebViewNavigation {
    case backward, forward, share
}

enum UrlType: String, Codable {
    case website, facebook, telegram, instagram
}
