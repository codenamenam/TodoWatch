//
//  TopBar.swift
//  TodoWatch
//
//  Created by nam on 2021/08/24.
//

import SwiftUI

struct TopBar: View {
    @State private var showModal = false
    
    
    var body: some View {
        HStack {
            Text("오늘 할 일")
                .font(.title)
                .bold()
                .padding()
        Spacer()
            
            Group {
                Button(action: {
                    self.showModal = true
                }, label: {
                    Text("+")
                        .font(.title)
                })
                    .sheet(isPresented: self.$showModal){
                        AddTodo()
                    }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("-")
                        .font(.title)
                })
            }
            .padding()
        }
        .padding()
        
        
        
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
