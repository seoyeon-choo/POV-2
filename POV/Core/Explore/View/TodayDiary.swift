//
//  TodayDiary.swift
//  POV
//
//  Created by 추서연 on 4/15/24.
//

import SwiftUI
import PhotosUI

struct TodayDiary: View {
    @State private var showAlert = false
    @State private var isMoodViewPresented = false
    @Binding var show: Bool
    @State private var photosPickerItem: PhotosPickerItem?
    @State private var photosPickerItem2: PhotosPickerItem?
    @State private var photosPickerItem3: PhotosPickerItem?
    @Binding var selectedImage: UIImage?
    @Binding var selectedImage2: UIImage?
    @Binding var selectedImage3: UIImage?
    
    @State private var selectedMood: Int? = nil
    

    
    let categories = ["daily", "place", "food", "music", "selfie", "people", "outfit", "scenery", "object", "sport"]
        
    var randomCategory: String {
            return categories.randomElement() ?? "Unknown"
        }
    
    let types = ["0.5x  13mm","HD   30fps","1x  20mm"]
        
    var randomType: String {
            return types.randomElement() ?? "Unknown"
        }
    
    var currentDateComponents: DateComponents {
            let date = Date()
            let calendar = Calendar.current
        return calendar.dateComponents([.year, .month, .day, .weekday], from: date)
        }
    
    func weekdayString(from weekday: Int?) -> String {
            guard let weekday = weekday, weekday >= 1 && weekday <= 7 else {
                return "Unknown"
            }
            let weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
            return weekdays[weekday - 1]
        }
    func monthYearString(from dateComponents: DateComponents?) -> String {
            guard let month = dateComponents?.month, let year = dateComponents?.year else {
                return "Unknown"
            }
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMMM yyyy"
            return dateFormatter.string(from: DateComponents(year: year, month: month).date ?? Date())
        }
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing:0){
                HStack{
                    
                    Button{
                        show.toggle()
                    } label: {
                        Image(systemName: "xmark")
                            .imageScale(.large)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Button{
                        showAlert = true
                        
                    } label: {
                        Text("Save")
                            .foregroundColor(Color.gray)
                    }.padding(.horizontal,15)
                        .frame( width:100, height:30)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill((Color(#colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 0.4))))
                        ).alert(isPresented: $showAlert) {
                            Alert(title: Text("Today's pov saved"), message: Text("Your diary has been saved successfully!"), dismissButton: .default(Text("OK")))
                            
                        }
                    
                  
                    
                    
                }.padding(15)
                
                //listing details
                HStack(spacing:15){
                    
                    Text("\(currentDateComponents.day ?? 0)")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.3019607843, blue: 0.262745098, alpha: 1)))
                        .font(.system(size: 35))
                    
                    //dates
                    VStack(alignment:.leading){
                        
                        Text("On \(weekdayString(from: currentDateComponents.weekday))")
                            .font(.system(size: 13))
                        Text("In \(monthYearString(from: currentDateComponents))")
                            .font(.system(size: 13))
                        
                    }
                    
                    Spacer()
                    
                    Button {
                        isMoodViewPresented.toggle()
                    } label: {
                        
                        if let mood = selectedMood {
                            Image("mood\(mood)_activate")
                                .imageScale(.large)
                                .foregroundColor(.gray)
                        } else {
                            Image("mood3")
                                .imageScale(.large)
                                .foregroundColor(.gray)
                        }
                        
                        
                    }
                    .sheet(isPresented: $isMoodViewPresented) {
                        MoodPopup(isPresented: $isMoodViewPresented, showMood: $isMoodViewPresented, selectedMood: $selectedMood)
                    }
                    .background(Color.clear)
                    
                }.padding(15)
             
                
                //images
                VStack(spacing:0){
                    
                    PhotosPicker(selection: $photosPickerItem, matching: .images) {
                        if let selectedImage = selectedImage {
                            Image(uiImage: selectedImage)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 190)
                                .clipped()
                            
                            
                        } else {
                            Rectangle()
                                .frame(height:190)
                                .foregroundColor((Color(#colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 0.5))))
                                .overlay(
                                    VStack{
                                        Text(randomCategory)
                                            .foregroundColor(.black)
                                            .font(.title)
                                        Text(randomType)
                                            .foregroundColor(.gray)
                                            .font(.footnote)
                                    }
                                )
                        }
                    }
                    .onChange(of: photosPickerItem) { newItem in
                        Task {
                            if let photosPickerItem = newItem,
                               let data = try? await photosPickerItem.loadTransferable(type: Data.self) {
                                self.selectedImage = UIImage(data: data)
                            }
                        }
                    }
                    
                    PhotosPicker(selection: $photosPickerItem2, matching: .images) {
                        if let selectedImage = selectedImage2 {
                            Image(uiImage: selectedImage)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 190)
                                .clipped()
                            
                            
                        } else {
                            Rectangle()
                                .frame(height:190)
                                .foregroundColor((Color(#colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 0.5))))
                                .overlay(
                                    VStack{
                                        Text(randomCategory)
                                            .foregroundColor(.black)
                                            .font(.title)
                                        Text(randomType)
                                            .foregroundColor(.gray)
                                            .font(.footnote)
                                    }
                                )
                        }
                    }
                    .onChange(of: photosPickerItem2) { newItem in
                        Task {
                            if let photosPickerItem = newItem,
                               let data = try? await photosPickerItem.loadTransferable(type: Data.self) {
                                self.selectedImage2 = UIImage(data: data)
                            }
                        }
                    }
                    
                    PhotosPicker(selection: $photosPickerItem3, matching: .images) {
                        if let selectedImage = selectedImage3 {
                            Image(uiImage: selectedImage)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 190)
                                .clipped()
                            
                            
                        } else {
                            Rectangle()
                                .frame(height:190)
                                .foregroundColor((Color(#colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 0.5))))
                                .overlay(
                                    VStack{
                                        Text(randomCategory)
                                            .foregroundColor(.black)
                                            .font(.title)
                                        Text(randomType)
                                            .foregroundColor(.gray)
                                            .font(.footnote)
                                    }
                                )
                        }
                    }
                    .onChange(of: photosPickerItem3) { newItem in
                        Task {
                            if let photosPickerItem = newItem,
                               let data = try? await photosPickerItem.loadTransferable(type: Data.self) {
                                self.selectedImage3 = UIImage(data: data)
                            }
                        }
                    }
                    
                    
                    
                    
                    
                }
                .foregroundColor(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(height:570)
                .padding(.bottom, 20)
                
                
                
                
                Spacer()
                
                DiarySection(isPresented: $isMoodViewPresented)
                
                
            }.padding(.bottom,20)
            
            
            
        }
    }
    
}

#Preview {
    TodayDiary(show: .constant(false), selectedImage: .constant(nil), selectedImage2: .constant(nil), selectedImage3: .constant(nil))
}
