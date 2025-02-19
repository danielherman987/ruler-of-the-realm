//
//  ruler_of_the_realmApp.swift
//  ruler-of-the-realm
//
//  Created by Daniel Herman on 2/15/25.
//

import SwiftUI
import Firebase

@main
struct RulerOfTheRealmApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @State private var isAuthenticated = false  // ✅ Keep track of authentication state

    var body: some Scene {
        WindowGroup {
            if isAuthenticated {
                ContentView() // ✅ Show main app when signed in
            } else {
                SignInView(isAuthenticated: $isAuthenticated)  // ✅ Pass binding
            }
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
