//
//  ButtonBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 20.10.2023.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title = "This is my title"
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text(title)
            
            Button("Press me") {
                self.title = "Button was pressed"
            }
            .accentColor(.red)
            .font(.title2)
            .padding(.bottom, 25)
            
            Button(action: {
                self.title = "Button 2 was pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.horizontal, 25)
                    .accentColor(.orange)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(color: .cyan, radius: 10)
                    )
            })
            
            Button {
                self.title = "Button 3#"
            } label: {
                Circle()
                    .fill(.blue)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.yellow)
                    }
            }
            .padding(.bottom)
            
            Button(action: {
                self.title = "Finidhed app"
            }, label: {
                Text("FINISH".uppercased())
                    .foregroundColor(.gray)
                    .bold()
                    .font(.title2)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Capsule()
                            .stroke(
                                Color.gray,
                                lineWidth: 3
                            )
                    )
            })
        })
    }
}

#Preview {
    ButtonBootcamp()
}
