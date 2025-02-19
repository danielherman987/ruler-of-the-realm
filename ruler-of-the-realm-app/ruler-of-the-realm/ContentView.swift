//
//  ContentView.swift
//  ruler-of-the-realm
//
//  Created by Daniel Herman on 2/15/25.
//

import SwiftUI
import FirebaseFirestore

struct ContentView: View {
    let db = Firestore.firestore()
    var body: some View {
        NavigationView {
            ZStack {
                
//                Text("Firestore Test")
//                    .padding()
//                    .onAppear {
//                        let testDoc = db.collection("test").document("sample")
//                        testDoc.setData(["message": "Hello, Firestore!"]) { error in
//                            if let error = error {
//                                print("Error writing document: \(error)")
//                            } else {
//                                print("Document successfully written!")
//                            }
//                        }
//                    }
                // Background image
                Image("home-background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .zero, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.8)
                
                VStack {
                    // UI elements like buttons go here
                    NavigationLink(destination: TaskView()) {
                        Text("Go to Tasks")
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()

                    NavigationLink(destination: DuelView()) {
                        Text("Go to Duels")
                            .font(.title)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()

                    NavigationLink(destination: ProfileView()) {
                        Text("Go to Profile")
                            .font(.title)
                            .padding()
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                }
                .navigationBarTitle("Ruler of the Realm", displayMode: .inline) // Title centered and inline
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Ruler of the Realm")
                            .font(.largeTitle)
                            .bold() // Make the title bold
                            .foregroundColor(.yellow) // Set title color to white
                            .overlay( // Add outline
                                Text("Ruler of the Realm")
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundColor(.black) // Outline color
                                    .offset(x: 2, y: 2)
                            )
                    }
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
