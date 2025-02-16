import SwiftUI

struct ProfileView: View {
    @State private var userName = "Hero"
    @State private var userXP = 100
    @State private var userClass: classTypes? = nil // Set initial value as nil
    @State private var userLevel = 1
    @State private var focuses = ["Focus 1", "Focus 2", "Focus 3"]
    @State private var showRespecModal = false
    @State private var newFocuses = ["Focus 1", "Focus 2", "Focus 3"]

    // Predefined list of possible focus options
    let allFocusOptions = Focuses.allCases.map { $0.rawValue }

    var body: some View {
        VStack {
            Text("User Profile")
                .font(.largeTitle)
                .padding()

            VStack(alignment: .leading, spacing: 10) {
                Text("Name: \(userName)")
                Text("XP: \(userXP)")
                Text("Class: \(userClass?.stringValue ?? "Unknown")") // Ensure safe unwrapping
                Text("Level: \(userLevel)")
            }
            .padding()

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
            .padding()

            // Modal for updating focuses
            .sheet(isPresented: $showRespecModal) {
                VStack {
                    Text("Modify Your Focuses")
                        .font(.headline)
                        .padding()

                    // Dropdowns for selecting new focuses
                    ForEach(0..<focuses.count, id: \.self) { index in
                        Picker("Select Focus \(index + 1)", selection: $newFocuses[index]) {
                            ForEach(allFocusOptions, id: \.self) { focusOption in
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
        .navigationBarTitle("Profile")
        .onAppear {
            // Update userClass when view appears or focuses is first initialized
            userClass = determineClassTypeString(for: focuses)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
