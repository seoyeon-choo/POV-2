//
//  Listing.swift
//  POV
//
//  Created by 추서연 on 4/17/24.
//


import Foundation

struct Listing: Identifiable, Codable, Hashable{
    let id: String
    let date: String
    let year: String
    let month: String
    let day: Int
    let dayOfWeek: String
    let image1Url : String
    let image2Url : String
    let image3Url : String
    let keyword1 : [Keywords]
    let keyword2 : [Keywords]
    let keyword3 : [Keywords]
    var title: String
    var context: String
    var mood: [MoodFeatures]
}

enum Keywords: Int, Codable, Identifiable, Hashable{
    case daily
    case place
    case food
    case music
    case selfie
    case people
    case outfit
    case scenery
    case object
    case sport
    
    var KeywordCategory: String{
        switch self{
        case .daily: return "daily"
        case .place: return "place"
        case .food: return "food"
        case .music: return "music"
        case .selfie: return "selfie"
        case .people: return "people"
        case .outfit: return "outfit"
        case .scenery: return "scenery"
        case .object: return "object"
        case .sport: return "sport"
            
        }
    }
    
    var id: Int {return self.rawValue}
}


enum MoodFeatures: Int, Codable, Identifiable, Hashable{
    case mood1
    case mood2
    case mood3
    case mood4
    case mood5
    case mood6
    case mood7
    case mood8
    case mood9
    
    var imageName: String{
        switch self{
        case .mood1: return "mood1"
        case .mood2: return "mood2"
        case .mood3: return "mood3"
        case .mood4: return "mood4"
        case .mood5: return "mood5"
        case .mood6: return "mood6"
        case .mood7: return "mood7"
        case .mood8: return "mood8"
        case .mood9: return "mood9"
            
        }
    }
    
    var imageNameActivated: String{
        switch self{
        case .mood1: return "mood1_activate"
        case .mood2: return "mood2_activate"
        case .mood3: return "mood3_activate"
        case .mood4: return "mood4_activate"
        case .mood5: return "mood5_activate"
        case .mood6: return "mood6_activate"
        case .mood7: return "mood7_activate"
        case .mood8: return "mood8_activate"
        case .mood9: return "mood9_activate"
            
        }
    }
    
    var id: Int {return self.rawValue}
}
