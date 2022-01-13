//
//  CalendarView.swift
//  TodoWatch
//
//  Created by nam on 2021/08/30.
//

import SwiftUI

struct ScrollBlockView: View {
    let title: String
    
    var body: some View {

        VStack(spacing: 10) {
            
            Text(title)
                .font(.system(size: 30))
                .bold()
            
            let screenSize: CGRect = UIScreen.main.bounds
            
            Path{ path in
                path.move(to: CGPoint(x: screenSize.origin.x + 40, y: 0))
                path.addLine(to: CGPoint(x: screenSize.width - 40, y: 0))
            }
            .stroke(lineWidth: 1.0)
            .frame(width: screenSize.width, height: 1, alignment: .center)
            .foregroundColor(Color(Color.RGBColorSpace.sRGB, red: 0/255, green: 0/255, blue: 0/255, opacity: 0.2))
            
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .frame(width: screenSize.width - 60, height: 400, alignment: .center)
                .foregroundColor(Color(Color.RGBColorSpace.sRGB, red: 0/255, green: 0/255, blue: 0/255, opacity: 0.13))
            
                
        }
        .padding(.top, 30)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollBlockView(title: "캘린더 및 통계")
    }
}
