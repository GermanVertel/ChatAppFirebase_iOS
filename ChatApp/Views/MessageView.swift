//
//  MessageView.swift
//  ChatApp
//
//  Created by German David Vertel Narvaez on 25/09/24.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        VStack(alignment: bubble ? .trailing : .leading ){
            HStack{
                Text(messages.text)
                    .foregroundStyle(bubble ? Color.white : Color.black)
                    .padding()
                    .background()
                    .background(bubble ? Color.blue : Color.gray)
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: bubble ? .trailing : .leading)
            
            Text(messages.username)
                .font(.caption)
                .foregroundStyle(.gray)
                .padding(bubble ? .trailing : .leading )
                
        }
        .frame(maxWidth: .infinity, alignment: bubble ? .trailing : .leading)
        .padding(bubble ? .trailing : .leading)
        .padding(.horizontal, 10)
        .onAppear {
            let idUser = UserDefaults.standard.string(forKey: "idUser") // Asigna el valor de UserDefaults
            
            if idUser == messages.idUser { // Compara idUser con messages.idUser
                bubble = true // Cambia el valor de bubble si coincide
            }
        }
     
    }
}

#Preview {
    MessageView()
}
