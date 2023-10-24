//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 21.10.2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.linear) {
                    isAnimated.toggle()
                }
            }
            .padding()
            
          Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
