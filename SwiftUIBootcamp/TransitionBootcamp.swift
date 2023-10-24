//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 21.10.2023.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                
                Button("Button") {
                    showView.toggle()
                }
                
                Spacer()
                
                if showView {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        .transition(.move(edge: .top))
                        .animation(.easeInOut)
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
