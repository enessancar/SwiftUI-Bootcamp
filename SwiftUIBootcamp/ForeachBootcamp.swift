//
//  ForeachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 18.10.2023.
//

import SwiftUI

struct ForeachBootcamp: View {
    var body: some View {
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("Index: \(index)")
                }
            }
        }
    }
}

#Preview {
    ForeachBootcamp()
}
