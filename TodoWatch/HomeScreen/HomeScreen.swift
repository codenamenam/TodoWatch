//
//  HomeScreen.swift
//  TodoWatch
//
//  Created by nam on 2021/08/24.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        VStack {
            
            TopBar()
            
                TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "message").tabItem { Text("ff") }.tag(1)
                    Text("Tab Content 1").tabItem { Text("그래프") }.tag(2)
                    Text("Tab Content 2").tabItem { Text("할 일") }.tag(3)
                    Text("Tab Content 3").tabItem { Text("목표 달성") }.tag(4)
                }
                //.tabViewStyle(PageTabViewStyle())
        }
        
            
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
