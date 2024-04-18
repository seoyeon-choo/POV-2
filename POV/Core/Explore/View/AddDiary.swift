//
//  AddDiary.swift
//  POV
//
//  Created by 추서연 on 4/15/24.
//

import SwiftUI

struct AddDiary: View {
    
    var currentDateComponents: DateComponents {
            let date = Date()
            let calendar = Calendar.current
            return calendar.dateComponents([.year, .month, .day], from: date)
        }
    
    var body: some View {
        HStack(){
            Text("\(currentDateComponents.day ?? 0)")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.3019607843, blue: 0.262745098, alpha: 1)))
                .font(.system(size: 35))
            
            Spacer()
            
            Text("add your pov")
                .foregroundStyle(Color.gray)
                .font(.system(size: 16))
            Button(action: {
            }, label: {
                Image(systemName: "plus.circle")
                    .foregroundStyle(.gray)
            })
   
            
        }
        .padding(15)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill((Color(#colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 0.4))))
        )
    }
}

#Preview {
    AddDiary()
}

