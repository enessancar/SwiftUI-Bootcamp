//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 23.10.2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello world") {
                    OtherScreen()
                }
                
                Text("Hello enes")
            }
            .navigationTitle("Navigation Bootcamp")
            
            .navigationBarItems(
                
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                
                trailing: NavigationLink(
                    destination: OtherScreen(),
                    label: { Image(systemName: "gear")
                    })
                .accentColor(.red)
            )
        }
    }
    
    struct OtherScreen: View {
        
        @Environment(\.presentationMode) var presentationMode
        
        var body: some View {
            ZStack {
                Color.green.edgesIgnoringSafeArea(.all)
                    .navigationTitle("Second Screen")
                
                VStack {
                    Button("Back Button") {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
