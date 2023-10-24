//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 17.10.2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fill)
                //.font(.largeTitle)
                .foregroundColor(.red)
            .frame(width: 200, height: 200)
            
            Spacer()
            
            Image(systemName: "person.fill.badge.plus")
                .font(.largeTitle)
                .symbolRenderingMode(.multicolor)
            
            Spacer()
        }
    }
}

#Preview {
    IconsBootcamp()
}
