//
//  VideoItemsMapper.swift
//  LearningDeutsch
//
//  Created by Denny Arfansyah on 18/09/2025.
//

import Foundation

final class VideoItemsMapper {
    private struct Root: Decodable {
        let items: [Item]
        
        var videos: [VideoItem] {
            items.map { $0.item }
        }
    }
    
    private struct Item: Decodable {
        let id: UUID
        let description: String?
        let location: String?
        let image: URL
        
        var item: VideoItem {
            return VideoItem(id: id,
                             description: description,
                             location: location,
                             imageURL: image)
        }
    }
    
    private static var OK_200: Int { 200 }
    
    static func map(_ data: Data, from response: HTTPURLResponse) -> RemoteVideoLoader.Result {
        guard response.statusCode == OK_200,
              let root = try? JSONDecoder().decode(Root.self, from: data) else {
            return .failure(.invalidData)
        }
        
        return .success(root.videos)
    }
}
