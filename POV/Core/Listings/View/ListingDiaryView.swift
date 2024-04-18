//
//  ListingDiaryView.swift
//  POV
//
//  Created by 추서연 on 4/14/24.
//

import SwiftUI

struct ListingDiaryView: View {
    
    @State private var isShowingPopup = false
   
    let listing:Listing
    
    var body: some View {
        VStack(spacing:0){
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
                
                .overlay(
                    NavigationLink(
                        destination: PastDiary(listing: listing)
                            .padding(.horizontal,15)
                    ) {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                    }
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
            
            .overlay(
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        
                        Image(systemName: "circle.grid.3x3.fill")
                            .aspectRatio(contentMode: .fill)
                            .imageScale(.medium)
                            .foregroundColor(.white)
                            .padding(30)
                            .onTapGesture {
                                isShowingPopup = true
                            }
                            .alert(isPresented: $isShowingPopup){
                                Alert(title:Text(""),
                                      message: Text(listing.context),
                                      dismissButton: .default(Text("확인")))
                            }
                    }
                }
            )
            

        }.padding(.bottom,20)
                        
    }
        
}

#Preview {
    ListingDiaryView(listing: DeveloperPreview.shared.listings[0])
}
