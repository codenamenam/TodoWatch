//
//  TopBar.swift
//  TodoWatch
//
//  Created by Nam on 2022/02/06.
//

import SwiftUI

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
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar(message: Binding<String>.constant("ff"))
    }
}
