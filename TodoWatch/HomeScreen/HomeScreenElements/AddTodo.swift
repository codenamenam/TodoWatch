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
    @State var addGroup : String = ""
    @State var addTodo1: String = ""
    @State var todoNumber: Int = 0
    
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
        
        VStack {
            
            Text("할 일 추가")
                .font(.title.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 40)
            
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
                    .disableAutocorrection(true)
                Spacer()
            }
            
            HStack{
                Text("할 일")
                    .font(.title2.bold())
                    .padding(.leading, 40)
                Spacer()
                
                Button(action: {todoNumber += 1}) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 60, height: 30, alignment: .center)
                            .foregroundColor(.green.opacity(0.8))
                        
                        Text("추가")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
                
                Button(action: {
                    if(todoNumber > 0)
                    {todoNumber -= 1}}) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 60, height: 30, alignment: .center)
                            .foregroundColor(.red.opacity(0.8))
                        
                        Text("삭제")
                            .foregroundColor(.white)
                            .bold()
                    }
                    .padding(.trailing, 30)
                }
                
                
            }
            
            ScrollView {
                ForEach(0 ..< todoNumber, id: \.self) { _ in
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.lightGray)
                            .frame(width: screenSize.width-40, height: 60, alignment: .center)
                        
                        TextField("안녕?", text : $addTodo1)
                            .frame(width: screenSize.width-60, height: 60, alignment: .center)
                    }
                }
            }
            
            Spacer()
            
        }
        
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
