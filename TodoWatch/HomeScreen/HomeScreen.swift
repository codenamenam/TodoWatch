//
//  HomeScreen.swift
//  TodoWatch
//
//  Created by nam on 2021/08/24.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        
        VStack {
            VStack {
                
                Text("")
                
                TabView(){
                    
                    ScrollView{
                        
                        VStack{
                            ScrollBlockView(title: "캘린더")
                            ScrollBlockView(title: "통계")
                            Spacer(minLength: CGFloat.init(20))
                        }
                        
                        
                    }
                    .tag(1)
                    .tabItem {
                        Image(systemName: "note.text")
                        Text("그래프")
                    }
                    
                    VStack{
                        TopBar()
                        Spacer()
                        ScrollView{
                            TodoButton()
                        }
                        Spacer()
                    }
                    .tag(2)
                    .tabItem{
                        Image(systemName: "stopwatch")
                        Text("오늘 할 일")
                    }
                    
                    Text("Tab Content 3")
                    .tag(3)
                    .tabItem{
                        Image(systemName: "flag")
                        Text("목표 달성")
                    }
                }
                .tabViewStyle(DefaultTabViewStyle.init())
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
