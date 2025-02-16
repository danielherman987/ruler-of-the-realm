import SwiftUI

struct ProfileView: View {
    @State private var userName = "Hero"
    @State private var userXP = 100
    @State private var userClass: classTypes? = nil // Set initial value as nil
    @State private var userLevel = 1
    @State private var focuses = ["Focus 1", "Focus 2", "Focus 3"]
    @State private var showRespecModal = false
    @State private var newFocuses = ["Focus 1", "Focus 2", "Focus 3"]
    @State private var bounce = false

    // Predefined list of possible focus options
    let allFocusOptions = Focuses.allCases.map { $0.rawValue }

    var body: some View {
        
        NavigationView {
            ZStack {
                // Background image
                Image("profile-background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.7)
                
                VStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Name: \(userName)")
                        Text("XP: \(userXP)")
                        Text("Class: \(userClass?.rawValue ?? "Unknown")") // Ensure safe unwrapping
                        Text("Level: \(userLevel)")
                    }
                    .padding(.top, 100)
                    
                    // Display the focuses horizontally
                    HStack(spacing: 20) {
                        ForEach(0..<focuses.count, id: \.self) { index in
                            Text(focuses[index])
                                .padding(10)
                                .background(Color.blue.opacity(0.1))
                                .cornerRadius(8)
                        }
                    }
                    .padding()
                    
                    // Respec button (small and beneath focuses)
                    Button(action: {
                        showRespecModal.toggle()
                    }) {
                        Text("Respec")
                            .font(.footnote)
                            .padding(5)
                            .foregroundColor(.purple)
                            .background(Color.clear)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.purple, lineWidth: 2)
                            )
                    }
                    .padding(.top, 10)
                    
                    // Display character image under the Respec button if available
                    if let imagePath = setCharacterImage(classType: userClass), let uiImage = UIImage(named: imagePath) {
                        Image(uiImage: uiImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250, height: 250)
                            .padding(.top, 20)
                            .offset(y: bounce ? 0 : 12) // Bounce effect (vertical)
                            .animation(
                                .interpolatingSpring(stiffness: 200, damping: 2) // Spring animation for bounce effect
                                    .repeatForever(autoreverses: true), value: bounce
                            )
                            .onAppear {
                                // Trigger the bounce animation
                                bounce.toggle()
                            }
                    }
                    
                    Spacer()
                    
                    // Gain XP button (unchanged)
                    Button(action: {
                        userXP += 50
                        userLevel += 1
                    }) {
                        Text("Gain XP")
                            .padding()
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 80)
                    
                    // Modal for updating focuses
                    .sheet(isPresented: $showRespecModal) {
                        VStack {
                            Text("Modify Your Focuses")
                                .font(.headline)
                                .padding()
                            
                            // Dropdowns for selecting new focuses
                            ForEach(0..<focuses.count, id: \.self) { index in
                                Picker("Select Focus \(index + 1)", selection: $newFocuses[index]) {
                                    // Filter out the already selected focuses
                                    ForEach(allFocusOptions.filter { !newFocuses.contains($0) || $0 == newFocuses[index] }, id: \.self) { focusOption in
                                        Text(focusOption)
                                            .tag(focusOption)
                                    }
                                }
                                .pickerStyle(MenuPickerStyle()) // Use a dropdown style
                                .padding()
                            }
                            
                            Button(action: {
                                focuses = newFocuses
                                // Update userClass after modifying focuses
                                userClass = determineClassTypeString(for: focuses)
                                showRespecModal.toggle()
                            }) {
                                Text("Save Changes")
                                    .padding()
                                    .background(Color.green)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .padding()
                            
                            Button(action: {
                                showRespecModal.toggle()
                            }) {
                                Text("Cancel")
                                    .padding()
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .padding()
                        }
                        .padding()
                    }
                }
                .navigationBarTitle("Profile", displayMode: .inline) // Add display mode inline for cleaner look
                .onAppear {
                    // Update userClass when view appears or focuses is first initialized
                    userClass = determineClassTypeString(for: focuses)
                }
            }
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
