//
//  ConditionalBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 20.10.2023.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLaoding: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            
            Button("Circle Button") {
                showCircle.toggle()
            }
            
            Button("Rectangle Button") {
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            } 
            if showCircle && showRectangle  {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 150, height: 150)
            }
            
            if isLaoding {
                ProgressView()
            }
            
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
