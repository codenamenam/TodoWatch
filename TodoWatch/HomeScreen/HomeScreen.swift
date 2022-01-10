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
                TabView(){
                    
                    ScrollView{
                        VStack{
                            CalendarView()
                            AnalysisView()
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
                
                /*
                HStack (spacing:0) {
                    RoundedRectangle(cornerRadius: 4)
                        .frame(height: 50, alignment: .center)
                        .foregroundColor(.yellow)
                        .overlay(Text("그래프"))
                        .onTapGesture(count: 1) {
                            
                        }

                    RoundedRectangle(cornerRadius: 4)
                        .frame(height: 50, alignment: .center)
                        .foregroundColor(.yellow)
                        .overlay(Text("오늘 할 일"))
                    
                    RoundedRectangle(cornerRadius: 4)
                        .frame(height: 50, alignment: .center)
                        .foregroundColor(.yellow)
                        .overlay(Text("목표 달성"))
                    
                }
                 */
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
