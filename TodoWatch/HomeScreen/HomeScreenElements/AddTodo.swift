//
//  AddTodo.swift
//  TodoWatch
//
//  Created by Nam on 2022/01/10.
//

import SwiftUI
import UIKit

struct AddTodo: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var addGroup : String = ""
    @State private var addTodo : String = ""
    
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
        
        VStack {
            
            HStack{
                Spacer()
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image("Graphics_X_Button")
                        .resizable()
                        .aspectRatio(CGSize(width: 0.1, height: 0.1), contentMode: .fit)
                        .frame(width: 50, height: 50)
                }
                .padding(.trailing, 30)
            }
            
            Text("할 일 추가")
                .font(.title.bold())
                .multilineTextAlignment(.center)
            
            Path{ path in
                path.move(to: CGPoint(x: screenSize.origin.x + 40, y: 0))
                path.addLine(to: CGPoint(x: screenSize.width - 40, y: 0))
            }
            .stroke(lineWidth: 1.0)
            .frame(width: screenSize.width, height: 1, alignment: .center)
            .foregroundColor(.lightGray)
            
            HStack{
                Spacer(minLength: 40)
                Text("그룹")
                    .font(.title2.bold())
                
                
                TextField("입력하세요", text: $addGroup)
                    .padding()
                    .underlineTextField()
                Spacer()
            }
            
            HStack{
                Text("할 일")
                    .font(.title2.bold())
                    .padding(.leading, 40)
                Spacer()
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.lightGray)
                    .frame(width: 330, height: 60, alignment: .center)
                
                
                
                TextField("안녕?", text : $addTodo)
                    .frame(width: 300, height: 60, alignment: .center)
                
            }
            
        }
        .frame(height: 500)
    }
        
}

extension Color {
    static let lightGray = Color(RGBColorSpace.displayP3, red: 0, green: 0, blue: 0, opacity: 0.2)
}


extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35).padding(.trailing).padding(.leading))
            .foregroundColor(.lightGray)
            .padding(10)
    }
}




struct AddTodo_Previews: PreviewProvider {
    static var previews: some View {
        AddTodo()
    }
}
