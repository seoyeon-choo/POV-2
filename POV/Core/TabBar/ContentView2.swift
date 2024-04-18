//
//  ContentView2.swift
//  POV
//
//  Created by 추서연 on 4/17/24.
//


import SwiftUI


struct Content2View: View {
    @State var currentTab: Int = 0
    var body: some View {
        VStack{
            Image("pov_log")
                
                ZStack(alignment: .top) {
                    
                    TabView(selection: self.$currentTab) {
                        
                        View2().tag(0)
                        ExploreView().tag(1).padding(.top, 50)
                        View3().tag(2)
                    }
                    //.tabViewStyle(.page(indexDisplayMode:.always))
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    .edgesIgnoringSafeArea(.all)
                    
                    TabBarView(currentTab: self.$currentTab)
                }
        }
    }
}


struct TabBarView: View {
    @Binding var currentTab: Int
    @Namespace var namespace
    
    var tabBarOptions: [String] = ["Keyword", "             ", "Calendar"]
    var body: some View {
             HStack {
         
                 Spacer()
                 ForEach(Array(zip(self.tabBarOptions.indices,self.tabBarOptions)),id: \.0,content: {
                     index, name in
                     
                     TabBarItem(currentTab: self.$currentTab, namespace: namespace.self, tabBarItemName: name, tab: index)
                    
                    .foregroundColor(.gray)
                    .padding(.horizontal,20)
         
                })
                 
                 Spacer()
         
         }
         .padding(.horizontal)//임의로 간격 설정해둠
         .frame(height: 30)
         
 
    }
}

struct TabBarItem: View {
    @Binding var currentTab: Int
    let namespace: Namespace.ID
    
    var tabBarItemName: String
    var tab: Int
    
    var body: some View {
        Button {
            self.currentTab = tab
        } label: {
            VStack {
                Spacer()
                Text(tabBarItemName)
                if currentTab == tab {
                    Color.red
                        .frame(height: 2)
                        .matchedGeometryEffect(id: "underline",
                                               in: namespace,
                                               properties: .frame)
                } else {
                    Color.clear.frame(height: 2)
                }
            }
            .animation(.spring(), value: self.currentTab)
        }
        .buttonStyle(.plain)
    }
}



#Preview {
    Content2View(currentTab: 1)
}
