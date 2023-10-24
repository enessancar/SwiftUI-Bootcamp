//
//  ExtractedBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 20.10.2023.
//

import SwiftUI

struct ExtractedBootcamp: View {
    
    
    
    var body: some View {
        ZStack {
            self.backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            contentLayer()
        }
    }
    
     
}

#Preview {
    ExtractedBootcamp()
}

struct contentLayer: View {
    
    @State var backgroundColor = Color.pink
    
    var body: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.black
                    )
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
       backgroundColor = .yellow
   }
}
