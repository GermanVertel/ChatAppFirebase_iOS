//
//  ContentView.swift
//  ChatApp
//
//  Created by German David Vertel Narvaez on 22/09/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var login: MessageViewModel // Corrección: se usa como @EnvironmentObject
    
    var body: some View {
        Group {
            if login.showChatApp {
                ChatView()
            } else {
                UserNameView()
            }
        }
        .onAppear {
            if UserDefaults.standard.object(forKey: "username") != nil {
                login.showChatApp = true
            }
        }
    }
}

#Preview {
    ContentView().environmentObject(MessageViewModel()) // Se pasa el objeto en el preview
}
