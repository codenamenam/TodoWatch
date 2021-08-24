//
//  TopBar.swift
//  TodoWatch
//
//  Created by nam on 2021/08/24.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack {
            Text("오늘 할 일")
                .font(.title)
                .bold()
                
        Spacer()
            
            Group {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("+")
                        .font(.title)
                })
                
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
