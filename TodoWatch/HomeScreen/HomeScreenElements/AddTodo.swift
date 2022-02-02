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
    @State var name: String = ""
    
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
        
        VStack {
            HStack{
                Text("할 일 추")
                    .font(.title.bold())
                    .padding()
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {

                    let text: Text = Text("+")
                    text.font(.title.bold())
                        .rotationEffect(Angle(degrees: 41))
                        .background(Circle().fill(Color.gray))
                        .foregroundColor(.white)
                        /*.font(.title.bold())
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .rotationEffect(Angle(degrees: 45))*/
                    
                        
                    
                }
                .padding()
            }
            
            Path{ path in
                path.move(to: CGPoint(x: screenSize.origin.x + 40, y: 0))
                path.addLine(to: CGPoint(x: screenSize.width - 40, y: 0))
            }
            .stroke(lineWidth: 1.0)
            .frame(width: screenSize.width, height: 1, alignment: .center)
            .foregroundColor(Color(Color.RGBColorSpace.sRGB, red: 0/255, green: 0/255, blue: 0/255, opacity: 0.2))
            
            HStack{
                Spacer()
                Text("그룹")
                    .font(.title2.bold())
                    .padding()
                
                TextField("입력하세요", text: $name){
                }
                .padding()
                .textContentType(.creditCardNumber)
                    
                    
                Spacer()
            }
            
        }
    }
}

struct AddTodo_Previews: PreviewProvider {
    static var previews: some View {
        AddTodo()
    }
}
