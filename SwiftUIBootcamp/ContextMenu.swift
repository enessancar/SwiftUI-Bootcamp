//
//  ContextMenu.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 26.10.2023.
//

import SwiftUI

struct ContextMenu: View {
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftul Thinking")
                .font(.headline)
            Text("How to use Context menu")
                .font(.subheadline)
        }
        .foregroundColor(.primary)
        .padding(30)
        .background(backgroundColor).cornerRadius(30)
        .contextMenu(menuItems: {
            
            Button(action: {
                
            }, label: {
                Label("Share Post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

#Preview {
    ContextMenu()
}
