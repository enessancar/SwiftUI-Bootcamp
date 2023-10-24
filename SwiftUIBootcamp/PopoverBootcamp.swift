//
//  PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 22.10.2023.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            /*
             METHOD 1 - SHEET
           .sheet(isPresented: $showNewScreen, content: {
               NewScreen()
           }) */
            
            // METHOD 2 - TRANSITION
            if showNewScreen {
                NewScreen(showNewScreen: $showNewScreen)
                    .transition(.move(edge: .bottom))
                    .animation(.spring())
            }
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                //presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            })
        }
    }
}

#Preview {
    PopoverBootcamp()
}
