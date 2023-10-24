//
//  ActionSheetBootcamp .swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 24.10.2023.
//

import SwiftUI

struct ActionSheetBootcamp_: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
        }
        .actionSheet(isPresented: $showActionSheet, content: {
            getActionSheet()
        })
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // add code to share post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // add code to report post
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // add code to delete post
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: Text("What would you like to do?"),
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        case .isOtherPost:
            return ActionSheet(
                title: Text("What would you like to do?"),
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        }
        
        /*
        let button1: ActionSheet.Button = .default(Text("default"))
        let button2: ActionSheet.Button = .destructive(Text("destructive"))
        let button3: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("This is title"),
            message: Text("This is the message"),
            buttons: [button1, button2, button3]
        ) */
    }
}

#Preview {
    ActionSheetBootcamp_()
}
