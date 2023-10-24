//
//  ImageBootcamp .swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 17.10.2023.
//

import SwiftUI

struct ImageBootcamp_: View {
    var body: some View {
        Image(.prison)
           // .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            //.cornerRadius(30)
            .clipShape(
                Circle()
                //RoundedRectangle(cornerRadius: 30)
                //Ellipse()
            )
            
    }
}

#Preview {
    ImageBootcamp_()
}
