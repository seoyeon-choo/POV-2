//
//  MoodView.swift
//  POV
//
//  Created by 추서연 on 4/17/24.
//

import SwiftUI


struct MoodView: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.4).edgesIgnoringSafeArea(.all) // 전체 화면을 덮는 배경
            
            VStack {
                Text("Custom Popup")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                
                // 팝업 내용 추가
                Text("This is a custom popup view.")
                    .foregroundColor(.black)
                    .padding()
                
                Button(action: {
                    // 팝업 닫기 동작 추가
                }) {
                    Text("Close")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }
            }
            .background(Color.white)
            .cornerRadius(10)
            .padding()
        }
    }
}

#Preview {
    MoodView()
}
