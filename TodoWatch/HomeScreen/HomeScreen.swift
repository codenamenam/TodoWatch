//
//  HomeScreen.swift
//  TodoWatch
//
//  Created by nam on 2021/08/24.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private var startScreen = 2
    @State var message : String = ""
    
    var body: some View {
        
        VStack {
            VStack {
                
                Text("")
                TabView(selection: $startScreen){
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
                        TopBar(message: $message)
                        Spacer()
                        ScrollView{
                            //TodoButton()
                            Text(message)
                                .font(.title)
                                .bold()
                        }
                        Spacer()
                    }
                    .tag(2)
                    .tabItem{
                        Image(systemName: "stopwatch")
                        Text("오늘 할 일")
                    }
                    
                    Acievement()
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

func dismiss(){
    
}

func delete(){
    
}




struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
