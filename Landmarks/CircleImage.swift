//
//  CircleImage.swift
//  Landmarks
//
//  Created by Timothy Hoiberg on 7/9/20.
//  Copyright © 2020 Timothy Hoiberg. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var shadowRadius: CGFloat = 10
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: shadowRadius)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
