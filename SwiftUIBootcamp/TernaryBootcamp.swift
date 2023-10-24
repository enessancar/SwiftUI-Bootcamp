//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 21.10.2023.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State" : "Ending State")
            
            RoundedRectangle(cornerRadius: 25)
                .fill(isStartingState ? .red : .blue)
                .frame(width: 200, height: 100)
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
