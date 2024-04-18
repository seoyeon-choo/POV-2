//
//  ExploreViewModel.swift
//  POV
//
//  Created by 추서연 on 4/17/24.
//

import Foundation

class ExploreViewModel: ObservableObject{
    @Published var listings = [Listing]()
    private let service: ExploreSerivce
    
    init(service: ExploreSerivce) {
        self.service = service
        
        Task {await fetchListings()}
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch{
            print("DEBUG: Failed to fetch listings with error : \(error.localizedDescription)")
        }
    }
}
