//
//  StopWatch.swift
//  TodoWatch
//
//  Created by nam on 2021/08/24.
//

import SwiftUI

struct StopWatch: View {
    var body: some View {
        
        let screenSize: CGRect = UIScreen.main.bounds
        
        VStack{
            
            Text("스톱워치")
                .font(.largeTitle)
                .bold()
            
            Path{ path in
                path.move(to: CGPoint(x: screenSize.origin.x + 40, y: 0))
                path.addLine(to: CGPoint(x: screenSize.width - 40, y: 0))
            }
            .stroke(lineWidth: 1.0)
            .frame(width: screenSize.width, height: 1, alignment: .center)
            .foregroundColor(.lightGray)
            
            
            
        }
        
        
    }
    
}


struct StopWatch_Previews: PreviewProvider {
    static var previews: some View {
        StopWatch()
    }
}
