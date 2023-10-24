//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 20.10.2023.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var myTitle: String = "My title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .yellow
                        self.myTitle = "Button 1 was pressed"
                        self.count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .blue
                        self.myTitle = "Button 2 was pressed"
                        self.count -= 1
                    }
                }
                
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    StateBootcamp()
}
