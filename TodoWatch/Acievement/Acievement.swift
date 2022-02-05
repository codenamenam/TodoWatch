//
//  Acievement.swift
//  TodoWatch
//
//  Created by Nam on 2022/02/06.
//

import SwiftUI

struct Acievement: View {
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
        
        VStack {
            ZStack{
                Image("Acievement")
                    .resizable()
                    .cornerRadius(15)
                    .frame(width: 350, height: 200)
                    .padding(.top, 20)
                
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 350, height: 200)
                    .padding(.top, 20)
                    .opacity(0.2)
                VStack(){
                    HStack{
                        Text("남동훈")
                            .font(.system(size: 30, weight: .heavy))
                            .foregroundColor(.white)
                            .padding(.leading, 40)
                        Spacer()
                    }
                    Group{
                        HStack{Spacer()}
                        HStack{Spacer()}
                        HStack{Spacer()}
                        HStack{Spacer()}
                    }
                    
                    HStack{
                        
                        Text("방학이 안끝났으면 좋겠어요. 영원히...")
                            .font(.system(size: 20, weight: .light))
                            .foregroundColor(.white)
                            .padding(.leading, 40)
                        
                        Spacer()
                    }
                }
            }
            
            HStack {
                Spacer()
                Button(action: {}) {
                    Text("수정")
                        .bold()
                        .padding(.trailing, 25)
                    
                }
            }
            
            HStack{
                Text("목표 달성")
                    .font(.system(size: 30, weight: .heavy))
                    .padding(.top,20)
                    .padding(.leading, 25)
                Spacer()
            }
            
            Path{ path in
                path.move(to: CGPoint(x: screenSize.origin.x + 20, y: 0))
                path.addLine(to: CGPoint(x: screenSize.width - 20, y: 0))
            }
            .stroke(lineWidth: 1.0)
            .frame(width: screenSize.width, height: 1, alignment: .center)
            .foregroundColor(.lightGray)
            
            Spacer()
        }
    }
}

struct Acievement_Previews: PreviewProvider {
    static var previews: some View {
        Acievement()
    }
}
