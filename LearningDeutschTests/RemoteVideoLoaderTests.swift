//
//  RemoteVideoLoaderTests.swift
//  LearningDeutschTests
//
//  Created by Denny Arfansyah on 16/09/2025.
//

import XCTest

class RemoteVideoLoader {
    let client: HTTPClient
    let url: URL
    
    init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    func load() {
        client.get(from: url)
    }
}

protocol HTTPClient {
    func get(from url: URL)
}

class RemoteVideoLoaderTests: XCTestCase {
    
    func test_init_doestNotRequestDataFromURL() {
        let (_, client) = makeSUT()
        
        XCTAssertNil(client.requestURL)
    }
    
    func test_load_requestDataFromURL() {
        let url = URL(string: "http://a-given-url.com")!
        let (sut, client) = makeSUT(url: url)
        
        sut.load()
        
        XCTAssertEqual(client.requestURL, url)
    }
    
    //MARK: - Helpers
    
    private func makeSUT(url: URL = URL(string: "http://a-url.com")!) -> (sut: RemoteVideoLoader, client: HTTPClientSpy) {
        let client = HTTPClientSpy()
        let sut = RemoteVideoLoader(url: url, client: client)
        
        return (sut, client)
    }
    
    private class HTTPClientSpy: HTTPClient {
        var requestURL: URL?
        
        func get(from url: URL) {
            requestURL = url
        }
    }
}
