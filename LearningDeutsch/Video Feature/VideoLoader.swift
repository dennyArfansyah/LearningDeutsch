//
//  VideoLoader.swift
//  LearningDeutsch
//
//  Created by Denny Arfansyah on 16/09/2025.
//

enum LoadVideoResult {
    case success([VideoItem])
    case error(Error)
}

protocol VideoLoader {
    func load(completion: @escaping (LoadVideoResult) -> Void)
}
