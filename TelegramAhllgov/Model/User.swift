//
//  User.swift
//  TelegramAhllgov
//
//  Created by Магомед Ахильгов on 30.08.2021.
//

import SwiftUI

struct User: Identifiable {
    
        var id = UUID().uuidString
        var name: String
        var message: String
        var picture: String
        var offset: CGFloat
        var isSwipped: Bool
    
}
