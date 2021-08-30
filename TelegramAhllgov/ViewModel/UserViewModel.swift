//
//  UserViewModel.swift
//  TelegramAhllgov
//
//  Created by Магомед Ахильгов on 30.08.2021.
//

import SwiftUI

class UserViewModel: ObservableObject {
    @Published var items  = [
        User(name: "Alex", message: "Hey! Whats app", picture: "p0", offset: 0, isSwipped: false),
        User(name: "Mike", message: "Can u borrow me some money?", picture: "p1", offset: 0, isSwipped: false),
        User(name: "Sean", message: "We need to talk", picture: "p2", offset: 0, isSwipped: false),
        User(name: "Lisa", message: "Are you allright?", picture: "p3", offset: 0, isSwipped: false),
        User(name: "Melissa", message: "I miss you..", picture: "p4", offset: 0, isSwipped: false),
        User(name: "Bank", message: "You have a loan debt", picture: "p5", offset: 0, isSwipped: false),
        User(name: "Linda", message: "Welcome to our company", picture: "p6", offset: 0, isSwipped: false),
        User(name: "Nick", message: "Don't smoke that shit again dude", picture: "p1", offset: 0, isSwipped: false),
        User(name: "Mom", message: "Call me son", picture: "p2", offset: 0, isSwipped: false),
        User(name: "Dad", message: "Why mom's crying", picture: "p3", offset: 0, isSwipped: false),
        User(name: "Boss", message: "Where are you??", picture: "p4", offset: 0, isSwipped: false),
        User(name: "Cat", message: "Where is my food man", picture: "p5", offset: 0, isSwipped: false),
        User(name: "Dog", message: "Are you ok?", picture: "p6", offset: 0, isSwipped: false),
        User(name: "Dominik", message: "Family", picture: "p1", offset: 0, isSwipped: false)
    ]

}
