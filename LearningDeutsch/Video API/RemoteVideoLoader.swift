//
//  RemoteVideoLoader.swift
//  LearningDeutsch
//
//  Created by Denny Arfansyah on 16/09/2025.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL)
}

public final class RemoteVideoLoader {
    private let url: URL
    private let client: HTTPClient
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load() {
        client.get(from: url)
    }
}
