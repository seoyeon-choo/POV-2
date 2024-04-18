//
//  DeveloperPreview.swift
//  POV
//
//  Created by 추서연 on 4/17/24.
//

import Foundation

class DeveloperPreview{
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id : NSUUID().uuidString,
            date : "2024-04-16",
            year : "2024",
            month : "April",
            day : 16,
            dayOfWeek : "Friday",
            image1Url : "diary-image-1",
            image2Url : "diary-image-2",
            image3Url : "diary-image-3",
            keyword1 : [.people],
            keyword2 : [.daily],
            keyword3 : [.daily],
            title : "What a busy day",
            context: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            mood : [.mood1]
            
        ),
        .init(
            id : NSUUID().uuidString,
            date : "2024-04-02",
            year : "2024",
            month : "March",
            day : 02,
            dayOfWeek : "Monday",
            image1Url : "diary-image-4",
            image2Url : "diary-image-5",
            image3Url : "diary-image-6",
            keyword1 : [.outfit],
            keyword2 : [.food],
            keyword3 : [.daily],
            title : "Girls talk",
            context: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            mood : [.mood2]
            
        ),
        .init(
            id : NSUUID().uuidString,
            date : "2024-03-22",
            year : "2024",
            month : "March",
            day : 22,
            dayOfWeek : "Thursday",
            image1Url : "diary-image-7",
            image2Url : "diary-image-8",
            image3Url : "diary-image-9",
            keyword1 : [.daily],
            keyword2 : [.scenery],
            keyword3 : [.people],
            title : "We love our tea time",
            context: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            mood : [.mood3]
            
        ),
        .init(
            id : NSUUID().uuidString,
            date : "2024-03-21",
            year : "2024",
            month : "March",
            day : 21,
            dayOfWeek : "Thursday",
            image1Url : "diary-image-10",
            image2Url : "diary-image-11",
            image3Url : "diary-image-12",
            keyword1 : [.daily],
            keyword2 : [.selfie],
            keyword3 : [.food],
            title : "Double Trouble",
            context: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            mood : [.mood6]
            
        ),
        .init(
            id : NSUUID().uuidString,
            date : "2024-03-12",
            year : "2024",
            month : "March",
            day : 12,
            dayOfWeek : "Wednesday",
            image1Url : "diary-image-13",
            image2Url : "diary-image-14",
            image3Url : "diary-image-15",
            keyword1 : [.place],
            keyword2 : [.daily],
            keyword3 : [.food],
            title : "Boring AF",
            context: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            mood : [.mood5]
            
        ),
    ]
}
