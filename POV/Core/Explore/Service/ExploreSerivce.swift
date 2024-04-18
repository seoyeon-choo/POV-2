//
//  ExploreSerivce.swift
//  POV
//
//  Created by 추서연 on 4/17/24.
//

import Foundation

class ExploreSerivce {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview().listings
    }
}
