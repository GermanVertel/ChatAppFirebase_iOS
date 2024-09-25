//
//  UserNameView.swift
//  ChatApp
//
//  Created by German David Vertel Narvaez on 23/09/24.
//

import SwiftUI

struct UserNameView: View {
    
    @EnvironmentObject var login : MessageViewModel
    @State private var name = ""
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            VStack{
                Text("Chat App")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 30)
                TextField("Username", text: $name)
                    .textFieldStyle(.roundedBorder)
                
                Button(action: {
                    UserDefaults.standard.setValue(name, forKey: "username")
                    UserDefaults.standard.setValue(UUID().uuidString, forKey: "idUser")
                    login.showChatApp = true
                }){
                    Text("Enter")
                        .foregroundStyle(.black)
                        .font(.title2)
                        .bold()
                }.buttonStyle(.borderedProminent)
                    .tint(.white)
                    .padding(.top,10)
                Spacer()
                
            }.padding(.all)
        }
    }
}

#Preview {
    UserNameView().environmentObject(MessageViewModel()) // Se pasa el objeto en el preview
}
