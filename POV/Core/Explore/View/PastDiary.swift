//
//  PastDiary.swift
//  POV
//
//  Created by 추서연 on 4/18/24.
//


import SwiftUI
import PhotosUI

struct PastDiary: View {
    let listing:Listing

    
    @State private var showAlert = false
    @State private var isShowingPopup = false
    
    var body: some View {
        VStack(alignment: .leading, spacing:0){
            HStack{
                Image(systemName: "xmark")
                    .imageScale(.large)
                    .foregroundColor(.gray)
                    .padding(15)
                
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
                
            }
            
            //listing details
            HStack(spacing:15){
                
                
                Text("\(listing.day)")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.3019607843, blue: 0.262745098, alpha: 1)))
                        .font(.system(size: 35))
                    
                    //dates
                    VStack(alignment:.leading){
                        Text("On \(listing.dayOfWeek)")
                            .font(.system(size: 13))
                        Text("In \(listing.month) \(listing.year)")
                            .font(.system(size: 13))
                    }
                
                    Spacer()
                    
                    //mood
                    
                    ForEach(listing.mood){moods in
                        Image(moods.imageName)
                            .padding(.horizontal, 15)
                    }
                    

            }.padding(15)
                
            .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke((Color(#colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1))), lineWidth: 1)
                    )
            
            
            
            


            //images
            VStack(spacing:0){

                
                Image(listing.image1Url)
                    .resizable()
                    .clipShape(Rectangle())
                    .aspectRatio(contentMode: .fill)
                    .frame(width:363, height:190)
                    .contentShape(Rectangle())

                Image(listing.image2Url)
                    .resizable()
                    .clipShape(Rectangle())
                    .scaledToFill()
                    .frame(width:363, height:190)
                    .clipped()
                    .contentShape(Rectangle())
                
                
                Image(listing.image3Url)
                    .resizable()
                    .clipShape(Rectangle())
                    .scaledToFill()
                    .frame(width:363, height:190)
                    .clipped()
                    .contentShape(Rectangle())
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .frame(height:570)
            .overlay(
                Text(listing.title)
                    .fontWeight(.bold)
                    .font(.custom("Italiana-Regular", size: 50))
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width:300)
            )
            .padding(.horizontal, 15)
            
            Text(listing.context)
            

        }.padding(.bottom,20)
                        
    }
        
}

#Preview {
    PastDiary(listing: DeveloperPreview.shared.listings[0])
}
