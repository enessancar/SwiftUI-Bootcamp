//
//  ColorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 17.10.2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color(.secondarySystemBackground)
                Color(.custom)
            )
            .shadow(color: .indigo, radius: 10)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ColorsBootcamp()
}
