//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Timothy Hoiberg on 10/9/20.
//  Copyright © 2020 Timothy Hoiberg. All rights reserved.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    static let goalFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        
        return formatter
    }()
    
    var body: some View {
        List {
            Text(profile.username)
                .bold()
                .font(.title)
            
            Text("Notifications: \(self.profile.prefersNotifications ? "On" : "Off" )")
            
            Text("Seasonal photos: \(self.profile.seasonalPhoto.rawValue)")
            
            Text("Goal date: \(self.profile.goalDate, formatter: Self.goalFormat)")
            
            VStack(alignment: .leading) {
                Text("Completed Badges").font(.headline)
                ScrollView {
                    HStack {
                        HikeBadge(name: "First Hike")
                        
                        HikeBadge(name: "Nature Day")
                        .hueRotation(Angle(degrees: 90))
                        
                        HikeBadge(name: "Tenth Hike").hueRotation(Angle(degrees: 45))
                    }
                }
                .frame(height: 140)
                
                VStack(alignment: .leading) {
                    Text("Recent Hikes").font(.headline)
                    
                    HikeView(hike: hikeData[0])
                }
                
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
