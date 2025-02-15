//
//  duel.swift
//  ruler-of-the-realm
//
//  Created by Daniel Herman on 2/15/25.
//

import SwiftUI

struct DuelView: View {
    @State private var duels: [String] = ["Duel 1", "Duel 2", "Duel 3"]
    
    var body: some View {
        VStack {
            List {
                ForEach(duels, id: \.self) { duel in
                    Text(duel)
                }
            }
            .navigationBarTitle("Duels")
            
            Spacer()
            
            Button(action: {
                // Start a new duel
                duels.append("New Duel")
            }) {
                Text("Start Duel")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct DuelView_Previews: PreviewProvider {
    static var previews: some View {
        DuelView()
    }
}
