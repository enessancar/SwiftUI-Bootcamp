//
//  SafeArea.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 19.10.2023.
//

import SwiftUI

struct SafeArea: View {
    var body: some View {
        ScrollView {
            Text("Title goes here")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 15)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
        }
        .background(.red)
    }
}

#Preview {
    SafeArea()
        
}
