//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 20.10.2023.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor = Color.green
    @State var title = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor = Color.blue
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = .pink
            title = "NEW TITLE"
            
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

#Preview {
    BindingBootcamp()
}
