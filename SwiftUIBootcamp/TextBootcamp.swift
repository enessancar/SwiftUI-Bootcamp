//
//  ContentView.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 17.10.2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello Fenerbahçe. I am a big fans yours , because super club. I am really happy for Fenerbahçe fans." .lowercased())
        /*
            .font(.body)
            .fontWeight(.semibold)
            .bold()
            .underline(color: .red)
            .italic()
            .strikethrough(color: .yellow)
         */
            .kerning(1.2)
            .baselineOffset(7)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.7)
    }
}

#Preview {
    TextBootcamp()
}
