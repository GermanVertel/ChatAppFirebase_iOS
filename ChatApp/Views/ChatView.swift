//
//  ChatView.swift
//  ChatApp
//
//  Created by German David Vertel Narvaez on 25/09/24.
//

import SwiftUI

struct ChatView: View {
    
    @EnvironmentObject var login : MessageViewModel
    @State private var username = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("ChatView")
                    
            }.navigationTitle(username)
                .toolbar{
                    Button("Exit"){
                        DispatchQueue.main.async {
                            UserDefaults.standard.removeObject(forKey: "username")
                            UserDefaults.standard.removeObject(forKey: "idUser")
                            login.showChatApp = false
                        }
                    }
                }.onAppear{
                    username = UserDefaults.standard.string(forKey: "username") ?? "User"
                }
        }
    }
}

#Preview {
    ChatView()
}
