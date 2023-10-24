//
//  GradientBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 17.10.2023.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [.blue, .purple, .yellow]),
                    startPoint: .leading,
                    endPoint: .trailing)
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientBootcamp()
}
