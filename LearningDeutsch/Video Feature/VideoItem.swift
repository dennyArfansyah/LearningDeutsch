//
//  VideoItem.swift
//  LearningDeutsch
//
//  Created by Denny Arfansyah on 16/09/2025.
//

import Foundation

public struct VideoItem: Equatable {
    public let id: UUID
    public let description: String?
    public let location: String?
    public let imageURL: URL
    
    public init(id: UUID, description: String?, location: String?, imageURL: URL) {
        self.id = id
        self.description = description
        self.location = location
        self.imageURL = imageURL
    }
}
