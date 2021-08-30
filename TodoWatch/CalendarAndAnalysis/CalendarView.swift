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
                .font(.system(size: 36))
                .bold()
                
            
            Path{ path in
                path.move(to: CGPoint(x: 30, y: 0))
                path.addLine(to: CGPoint(x: 350, y: 0))
            }
            .stroke(lineWidth: 1.5)
            .frame(width: 380, height: 1, alignment: .center)
                
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .frame(width: 300, height: 400, alignment: .center)
                .foregroundColor(.blue)
                
        }
        .padding(.top, 30)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
