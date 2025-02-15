//
//  profile.swift
//  ruler-of-the-realm
//
//  Created by Daniel Herman on 2/15/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var userName = "Hero"
    @State private var userXP = 100
    @State private var userLevel = 1
    
    var body: some View {
        VStack {
            Text("User Profile")
                .font(.largeTitle)
                .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Name: \(userName)")
                Text("XP: \(userXP)")
                Text("Level: \(userLevel)")
            }
            .padding()
            
            Spacer()
            
            Button(action: {
                // Update profile information
                userXP += 50
                userLevel += 1
            }) {
                Text("Gain XP")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .navigationBarTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
