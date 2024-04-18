//
//  ExploreView.swift
//  POV
//
//  Created by 추서연 on 4/14/24.
//

import SwiftUI
import Foundation

struct ExploreView: View {

    @State private var showTodayDiary = false
    @State private var showPastDiary = false
    
    @StateObject var ViewModel = ExploreViewModel(service: ExploreSerivce())
    
    @State private var selectedImage: UIImage?
    @State private var selectedImage2: UIImage?
    @State private var selectedImage3: UIImage?
    
    
    var body: some View {
        NavigationStack{
            if showTodayDiary {
                TodayDiary(show: $showTodayDiary, selectedImage: $selectedImage, selectedImage2: $selectedImage2, selectedImage3: $selectedImage3)
                    .padding(.horizontal,15)
            } else{
                ScrollView{
                    AddDiary()
                        .onTapGesture {
                                withAnimation(.snappy) {
                                    showTodayDiary.toggle()
                                }
                            }
                        
                    
                    LazyVStack(spacing: 2) {
                        
                        Spacer()
//                        Text("")
                        ForEach(ViewModel.listings){ listing in
                            ListingDiaryView(listing: listing)
                                
                        }
                    }
                }.padding(.horizontal,15)
            }
        }
    }
}



#Preview {
    ExploreView()
}
