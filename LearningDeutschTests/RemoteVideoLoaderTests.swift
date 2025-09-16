//
//  RemoteVideoLoaderTests.swift
//  LearningDeutschTests
//
//  Created by Denny Arfansyah on 16/09/2025.
//

import XCTest

class RemoteVideoLoader {
    func load() {
        HTTPClient.shared.requestURL = URL(string: "https://a-url.com")!
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    
    var requestURL: URL?
}


class RemoteVideoLoaderTests: XCTestCase {
    
    func test_init_doestNotRequestDataFromURL() {
        let client = HTTPClient.shared
        _ = RemoteVideoLoader()
        
        XCTAssertNil(client.requestURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteVideoLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestURL)
    }
}
