//
//  Messages.swift
//  ChatApp
//
//  Created by German David Vertel Narvaez on 23/09/24.
//

import Foundation

struct Messages: Identifiable, Codable {
    var id: String
    var text: String
    var username: String
    var idUser: String
    var timestmap: Date
}
