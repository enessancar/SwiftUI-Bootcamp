//
//  ExtractSubviewBootcamp .swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 20.10.2023.
//

import SwiftUI

struct ExtractSubviewBootcamp_: View {
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    var contentLayer: some View {
        HStack {
            MyItem(title: "enes", count: 5, color: .yellow)
            MyItem(title: "nisa", count: 4, color: .pink)
            MyItem(title: "fener", count: 5, color: .custom)
        }
    }
}

#Preview {
    ExtractSubviewBootcamp_()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
