//
//  ukraineTests.swift
//  ukraineTests
//
//  Created by Victor Gustafsson on 2023-05-21.
//

import XCTest
final class ukraineTests: XCTestCase {


    func testTopicViewModelInitialization() {
          // Given
        let topic = TopicModel(id: 123, title: "asd", description: "asd", subTopics: [SubTopicModel(id: 0, title: "asd", url: "asd", urlType: .website, description: "asd")], imageUrl: "asd")
          
          // When
          let viewModel = TopicViewModel(topic: topic)
          
          // Then
          XCTAssertEqual(viewModel.id, topic.id)
      }
    
}
