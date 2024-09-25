//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by German David Vertel Narvaez on 22/09/24.
//


import SwiftUI
import FirebaseCore
import FirebaseFirestore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct YourApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var login = MessageViewModel() // Cambiado a @StateObject para mantener la instancia
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }
            .environmentObject(login) // Se pasa el view model a toda la app
        }
    }
}
