//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 21.10.2023.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 25)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100)
                .animation(Animation.default)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100)
                .animation(Animation.easeIn)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100)
                .animation(Animation.spring)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100)
                .animation(Animation.easeOut(duration: 7))
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
