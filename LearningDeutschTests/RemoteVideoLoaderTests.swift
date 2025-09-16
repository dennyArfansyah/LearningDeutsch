//
//  RemoteVideoLoaderTests.swift
//  LearningDeutschTests
//
//  Created by Denny Arfansyah on 16/09/2025.
//

import XCTest

class RemoteVideoLoader {
    let client: HTTPClient
    
    init(client: HTTPClient) {
        self.client = client
    }
    
    func load() {
        client.get(from: URL(string: "https://a-url.com")!)
    }
}

protocol HTTPClient {
    func get(from url: URL)
}

class HTTPClientSpy: HTTPClient {
    var requestURL: URL?
    
    func get(from url: URL) {
        requestURL = url
    }
}

class RemoteVideoLoaderTests: XCTestCase {
    
    func test_init_doestNotRequestDataFromURL() {
        let client = HTTPClientSpy()
        _ = RemoteVideoLoader(client: client)
        
        XCTAssertNil(client.requestURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClientSpy()
        let sut = RemoteVideoLoader(client: client)
        
        sut.load()
        
        XCTAssertNotNil(client.requestURL)
    }
}
