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

struct TopBar: View {
    @State private var showAddTodo = false
    @Binding var message : String
    var body: some View {
        
        HStack {
            Text("오늘 할 일")
                .font(.title)
                .bold()
                .padding(.leading)
            
            Spacer()
            
            HStack {
                Button(action: {showAddTodo.toggle()}, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:70, height:40, alignment: .center)
                            .foregroundColor(Color.blue.opacity(0.8))
                        Text("추가")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                })
                    .sheet(isPresented: self.$showAddTodo, onDismiss: dismiss){
                        AddTodo(addGroup: $message)
                    }
                
                Button(action: delete, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:70, height:40, alignment: .center)
                            .foregroundColor(Color.red.opacity(0.8))
                        Text("삭제")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                })
            }
        }
        .padding()
    }
    
    func dismiss(){
        
    }
    
    func delete(){
        
    }
}



struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
