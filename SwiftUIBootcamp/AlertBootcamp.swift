//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 24.10.2023.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    
    @State var backgroundColor: Color = .yellow
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                Button("Button 1") {
                    alertTitle = "Error uploading video"
                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                     alertTitle = "Successfully uploaded video"
                     alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle),
                     message: Text(alertMessage),
                     dismissButton: .default(Text("OK"))
        )
    }
}

#Preview {
    AlertBootcamp()
}
