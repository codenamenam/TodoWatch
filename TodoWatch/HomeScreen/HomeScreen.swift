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
                TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                    
                    ScrollView{
                        VStack{
                            CalendarView()
                            
                            AnalysisView()
                        }
                    }
                    .tag(1)
                    
                    VStack{
                        TopBar()
                        Spacer()
                        Image(systemName: "message")
                        Spacer()
                    }
                    .tag(2)
                    
                    
                    Text("Tab Content 3")
                        .tag(3)
                        
                    
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

                
                HStack (spacing: 0) {
                    Spacer()
                    
                    
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 125, height: 50, alignment: .center)
                        .foregroundColor(.yellow)
                        .overlay(Text("그래프"))
                        .onTapGesture {
                            isSelected.toggle()
                        }

                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 125, height: 50, alignment: .center)
                        .foregroundColor(.yellow)
                        .overlay(Text("오늘 할 일"))
                    
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 125, height: 50, alignment: .center)
                        .foregroundColor(.yellow)
                        .overlay(Text("목표 달성"))
                                        
                        
                    Spacer()
                }
                
            }
            
            
            
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
