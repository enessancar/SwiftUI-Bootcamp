//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 17.10.2023.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        /*
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 150, alignment: .center)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100, alignment: .center)
                
                HStack {
                    Rectangle()
                        .fill(.red)
                    .frame(width: 50, height: 50, alignment: .center)
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width: 50, height: 50)
                }
                .background(.white)
            }
            .background(.orange)
        } */
        
        HStack {
            Text("Items in your cart:")
                .font(.caption)
                
            Text("5")
                .bold()
                .font(.largeTitle)
            
            
        }
    }
}

#Preview {
    StacksBootcamp()
}
