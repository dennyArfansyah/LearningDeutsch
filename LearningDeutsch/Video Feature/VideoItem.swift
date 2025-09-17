//
//  VideoItem.swift
//  LearningDeutsch
//
//  Created by Denny Arfansyah on 16/09/2025.
//

import Foundation

public struct VideoItem: Equatable {
    let id: UUID
    let title: String
    let description: String?
    let thumbnailURL: URL
    let videoURL: URL
}
