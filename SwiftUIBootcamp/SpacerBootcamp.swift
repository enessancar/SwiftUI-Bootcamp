//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 18.10.2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack {
            Image(systemName: "xmark")
            Image(systemName: "gear")
            Spacer()
        }
        .font(.title)
        .background(.yellow)
    }
}

#Preview {
    SpacerBootcamp()
}
