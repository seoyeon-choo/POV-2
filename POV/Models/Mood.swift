//
//  Mood.swift
//  POV
//
//  Created by 추서연 on 4/16/24.
//

/*
 Diary
 Date, year, month, day , dayweek, image1, image2, image3, keyword1, keyword2, keyword3, title, diary context, mood

 mood
 Mood1, mood2, mood3, mood4, mood5, mood6,mood7, mood8, mood9


*/

import SwiftUI


struct Mood: Identifiable, Hashable {
    var id: UUID
    var mood: String


}

extension Pack {
    static let moodlistData = [
        Pack(id:UUID(), mood: "mood1"),
        Pack(id:UUID(), mood: "mood2"),
        Pack(id:UUID(), mood: "mood3"),
        Pack(id:UUID(), mood: "mood4"),
        Pack(id:UUID(), mood: "mood5"),
        Pack(id:UUID(), mood: "mood6"),
        Pack(id:UUID(), mood: "mood7"),
        Pack(id:UUID(), mood: "mood8"),
        Pack(id:UUID(), mood: "mood9")
        
  
        
    ]
}
