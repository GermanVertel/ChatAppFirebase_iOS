//
//  SendView.swift
//  ChatApp
//
//  Created by German David Vertel Narvaez on 25/09/24.
//

import SwiftUI

struct SendView: View {
    
    @StateObject var messageModel = MessageViewModel()
    @State private var messege = ""
    var body: some View {
        HStack{
            TextField("Enter your message", text: $messege)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled()
            
            Button{
                print("mensaje")
            }label: {
                Image(systemName: "paperplane.fill")
                    .foregroundStyle(.white)
                    .padding(10)
                    .background(Color.blue)
                    .cornerRadius(50)
            }
        }.padding(.horizontal)
            .padding(.all)
    }
}

#Preview {
    SendView()
}
