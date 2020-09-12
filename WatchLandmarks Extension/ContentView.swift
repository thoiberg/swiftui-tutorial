//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Timothy Hoiberg on 12/9/20.
//  Copyright © 2020 Timothy Hoiberg. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }.environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
