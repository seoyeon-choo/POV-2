//
//  DiarySection.swift
//  POV
//
//  Created by 추서연 on 4/16/24.
//

import SwiftUI

struct DiarySection: View {
    @Binding var isPresented: Bool
    @State private var title = ""
    @State private var diary = ""
    @State private var isEditing = false

    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(systemName: "pin")
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.3019607843, blue: 0.262745098, alpha: 1)))
                    .padding(.horizontal, 15)
                

                TextField("Add a title", text: $title)
                    .padding(.horizontal, 15)
                    
            }.padding(.bottom, 15)
                
            
            
            
                HStack(alignment: .top){
                    
                    VStack{
                        Image(systemName: "text.justify.left")
                            .frame(width: 20, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.3019607843, blue: 0.262745098, alpha: 1)))
                            .padding(.horizontal, 15)
                            
                        
                    Spacer()
                    }.frame(height:200)
                    
                                
                    if diary.isEmpty && !isEditing {
                        TextEditor(text: $diary)
                            
                            .background(Color.blue)
                            .frame(height: 190)
                            .padding(.horizontal, 10)
                            
                            .overlay(
                                
                                    Text("Start writing ...")
                                        .background(Color.red)
                                        .foregroundColor(.gray)
                                        
                                        
                                
                        )
                    }
                    else {
                        TextEditor(text: $diary)
                            
                            .background(Color.blue)
                            .frame(height: 190)
                            .padding(.horizontal, 10)
                    }
                }
            }
            .onTapGesture { isEditing = true }
        
       
        
    }
}

#Preview {
    DiarySection(isPresented: .constant(true))
}
