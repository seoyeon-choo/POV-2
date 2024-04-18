//
//  DiaryStructure.swift
//  POV
//
//  Created by 추서연 on 4/16/24.
//

/*
 Diary
 Date, year, month, day , dayweek, image1, image2, image3, keyword1, keyword2, keyword3, title, diary context, mood
*/

import SwiftUI

struct DiaryStructure: Identifiable {
    var id: UUID
    var date: String
    var year: Int
    var month: Int
    var day: Int
    var dayOfWeek: String
    var images: [String]
    var keywords: [String]
    var title: String
    var context: String
    var mood: String
    
    
    init(id: UUID, date: String, year: Int, month: Int, day: Int, dayOfWeek: String, images: [String], keywords: [String], title: String, context: String, mood: String) {
        self.id = id
        self.date = date
        self.year = year
        self.month = month
        self.day = day
        self.dayOfWeek = dayOfWeek
        self.images = images
        self.keywords = keywords
        self.title = title
        self.context = context
        self.mood = mood
    }
}

let entry1 = DiaryStructure(id: UUID(), date: "2024-04-16", year: 2024, month: 4, day: 16, dayOfWeek: "Friday", images: ["image1.jpg", "image2.jpg", "image3.jpg"], keywords: ["keyword1", "keyword2", "keyword3"], title: "A happy Day", context: "Today I enjoyed a peaceful walk in the park and had a delicious lunch with friends.", mood: "mood2")

let entry2 = DiaryStructure(id: UUID(), date: "2024-05-21", year: 2024, month: 5, day: 21, dayOfWeek: "Saturday", images: ["image1.jpg", "image2.jpg", "image3.jpg"], keywords: ["keyword1", "keyword2", "keyword3"], title: "A Wonderful Day", context: "Today I enjoyed a peaceful walk in the park and had a delicious lunch with friends.", mood: "mood3")

let entry3 = DiaryStructure(id: UUID(), date: "2024-06-09", year: 2024, month: 6, day: 09, dayOfWeek: "Monday", images: ["image1.jpg", "image2.jpg", "image3.jpg"], keywords: ["keyword1", "keyword2", "keyword3"], title: "A nice Day", context: "Today I enjoyed a peaceful walk in the park and had a delicious lunch with friends.", mood: "mood4")

let entry4 = DiaryStructure(id: UUID(), date: "2024-04-16", year: 2024, month: 4, day: 16, dayOfWeek: "Friday", images: ["image1.jpg", "image2.jpg", "image3.jpg"], keywords: ["keyword1", "keyword2", "keyword3"], title: "A horrible Day", context: "Today I enjoyed a peaceful walk in the park and had a delicious lunch with friends.", mood: "mood5")

let entry5 = DiaryStructure(id: UUID(), date: "2024-05-21", year: 2024, month: 5, day: 21, dayOfWeek: "Saturday", images: ["image1.jpg", "image2.jpg", "image3.jpg"], keywords: ["keyword1", "keyword2", "keyword3"], title: "A Day", context: "Today I enjoyed a peaceful walk in the park and had a delicious lunch with friends.", mood: "mood1")

let entry6 = DiaryStructure(id: UUID(), date: "2024-06-09", year: 2024, month: 6, day: 09, dayOfWeek: "Monday", images: ["image1.jpg", "image2.jpg", "image3.jpg"], keywords: ["keyword1", "keyword2", "keyword3"], title: "A lovely Day", context: "Today I enjoyed a peaceful walk in the park and had a delicious lunch with friends.", mood: "mood3")

let entry7 = DiaryStructure(id: UUID(), date: "2024-01-09", year: 2024, month: 2, day: 10, dayOfWeek: "Monday", images: ["image1.jpg", "image2.jpg", "image3.jpg"], keywords: ["keyword1", "keyword2", "keyword3"], title: "A Sweet Day", context: "Today I enjoyed a peaceful walk in the park and had a delicious lunch with friends.", mood: "mood4")

let entry8 = DiaryStructure(id: UUID(), date: "2024-01-25", year: 2024, month: 1, day: 25, dayOfWeek: "Monday", images: ["image1.jpg", "image2.jpg", "image3.jpg"], keywords: ["keyword1", "keyword2", "keyword3"], title: "A Wonderful Day", context: "Today I enjoyed a peaceful walk in the park and had a delicious lunch with friends.", mood: "mood4")

let entry9 = DiaryStructure(id: UUID(), date: "2024-01-25", year: 2024, month: 1, day: 25, dayOfWeek: "Monday", images: ["image1.jpg", "image2.jpg", "image3.jpg"], keywords: ["keyword1", "keyword2", "keyword3"], title: "A Wonderful Day", context: "Today I enjoyed a peaceful walk in the park and had a delicious lunch with friends.", mood: "mood4")

let entry10 = DiaryStructure(id: UUID(), date: "2024-01-25", year: 2024, month: 1, day: 25, dayOfWeek: "Monday", images: ["image1.jpg", "image2.jpg", "image3.jpg"], keywords: ["keyword1", "keyword2", "keyword3"], title: "A Wonderful Day", context: "Today I enjoyed a peaceful walk in the park and had a delicious lunch with friends.", mood: "mood4")
