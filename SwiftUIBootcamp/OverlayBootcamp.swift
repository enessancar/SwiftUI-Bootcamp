//
//  OverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 17.10.2023.
//

import SwiftUI

struct OverlayBootcamp: View {
    var body: some View {
        /*
         Circle()
         .fill(.pink)
         .frame(width: 100, height: 100, alignment: .center)
         .overlay {
         Text("1")
         .font(.largeTitle)
         .foregroundColor(.white)
         } */
        
        /*
         Rectangle()
         .frame(width: 100, height: 100, alignment: .center)
         .overlay {
         Rectangle()
         .fill(.blue)
         .frame(width: 50, height: 50, alignment: .center)
         .background(
         Rectangle()
         .fill(.yellow)
         .frame(width: 150, height: 150, alignment: .center)
         )
         }
         */
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.red, .blue]), startPoint: .leading,
                            endPoint: .trailing))
                    .frame(width: 100, height: 100)
                    .shadow(color: .red, radius: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .black , radius: 10)
                        ,alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    OverlayBootcamp()
}
