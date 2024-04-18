//
//  MoodPopup.swift
//  POV
//
//  Created by 추서연 on 4/17/24.
//

import SwiftUI
struct MoodPopup: View {
    @Binding var isPresented: Bool
    @Binding var showMood: Bool
    
    @Binding var selectedMood: Int?
    
    let moodsPerRow = 3
    let moodCount = 9
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                /*
                Button{
                    showMood.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .imageScale(.large)
                        .foregroundColor(.gray)
                }.padding(30)
                 */
            }
            LazyVGrid(columns: Array(repeating: GridItem(), count: moodsPerRow), spacing: 10) {
                            ForEach(1..<moodCount + 1) { moodIndex in
                                let activated = selectedMood == moodIndex
                                
                                Image(activated ? "mood\(moodIndex)_activate" : "mood\(moodIndex)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25, height: 25)
                                    .padding()
                                    .onTapGesture {
                                        if selectedMood == moodIndex {
                                            selectedMood = nil
                                        } else {
                                            selectedMood = moodIndex
                                        }
                                    }
                            }
                        }
            .padding(.horizontal,50)
            
            
            Text("Choose your mood")
                .font(.system(size: 18))
                .padding(30)
                .foregroundColor(.gray)
            
            
            Button("Save", action: {
                // Register action
                self.isPresented = false
            })
            .padding()
            .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.3019607843, blue: 0.262745098, alpha: 1)))
            
            .padding(.horizontal,15)
                .frame( width:100, height:30)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill((Color(#colorLiteral(red: 0.9960784314, green: 0.3019607843, blue: 0.262745098, alpha: 0.2))))
                )
            
        }
        .frame(maxWidth: 300, maxHeight: 500)
        .background(Color.clear)
        .cornerRadius(20)
        .padding()
        .background(Color.black.opacity(0))
    }
}




#Preview {
    MoodPopup( isPresented: .constant(true), showMood: .constant(false) ,selectedMood:.constant(nil))
}

