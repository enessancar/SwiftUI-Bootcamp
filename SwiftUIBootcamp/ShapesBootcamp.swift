//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 17.10.2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 250, height: 100)
            .foregroundColor(.red)
        //.foregroundColor(.blue)
        //.stroke(.black)
        //.stroke(Color.blue, lineWidth: 10)
        // .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [20]))
        // .trim(from: 0.2, to: 1)
        //.stroke(.purple, lineWidth: 10)
        
    }
}

#Preview {
    ShapesBootcamp()
}

