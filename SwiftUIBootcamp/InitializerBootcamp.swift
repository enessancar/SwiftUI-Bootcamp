//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 18.10.2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apples"
        } else {
            self.backgroundColor = .orange
            self.title = "Orange"
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            
            Text(title)
                .font(.headline)
            
        }
        .foregroundColor(.white)
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(12)
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 5, fruit: .apple)
        InitializerBootcamp(count: 10, fruit: .orange)
    }
}
