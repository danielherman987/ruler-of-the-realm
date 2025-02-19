import SwiftUI

struct SignUpView: View {
    @Binding var isAuthenticated: Bool  // Accept isAuthenticated as a binding
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var errorMessage: String?

    var body: some View {
        VStack {
            Text("Sign Up")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            if let errorMessage = errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
            }
            
            Button(action: {
                AuthService.shared.signUp(email: email, password: password, username: username) { result in
                    switch result {
                    case .success:
                        isAuthenticated = true  // ✅ Set isAuthenticated to true
                    case .failure(let error):
                        errorMessage = error.localizedDescription
                    }
                }
            }) {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding()
            
            NavigationLink("Already have an account? Sign In", destination: SignInView(isAuthenticated: $isAuthenticated))
        }
        .padding()
    }
}
