//
//  RemoteVideoLoaderTests.swift
//  LearningDeutschTests
//
//  Created by Denny Arfansyah on 16/09/2025.
//

import XCTest

class RemoteVideoLoader {}

class HTTPClient {
    var requestURL: URL?
}


class RemoteVideoLoaderTests: XCTestCase {
    
    func test_init_doestNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteVideoLoader()
        
        XCTAssertNil(client.requestURL)
    }
    
}
