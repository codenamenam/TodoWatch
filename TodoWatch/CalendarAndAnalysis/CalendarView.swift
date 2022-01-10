//
//  CalendarView.swift
//  TodoWatch
//
//  Created by nam on 2021/08/30.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("캘린더")
                .font(.system(size: 30))
                .bold()
                
            Path{ path in
                path.move(to: CGPoint(x: 30, y: 0))
                path.addLine(to: CGPoint(x: 350, y: 0))
            }
            .stroke(lineWidth: 1.0)
            .frame(width: 380, height: 1, alignment: .center)
            .foregroundColor(Color(Color.RGBColorSpace.sRGB, red: 0/255, green: 0/255, blue: 0/255, opacity: 0.53))
                
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .frame(width: 300, height: 400, alignment: .center)
                .foregroundColor(Color(Color.RGBColorSpace.sRGB, red: 0/255, green: 0/255, blue: 0/255, opacity: 0.13))
        }
        .padding(.top, 30)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
