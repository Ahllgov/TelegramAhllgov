//
//  SettingViewModel.swift
//  TelegramAhllgov
//
//  Created by Магомед Ахильгов on 30.08.2021.
//

import SwiftUI

class SettingViewModel: ObservableObject {
    @Published var groupFirst  = [
        Setting(name: "Saved Messages", picture: "bookmark.fill", color: "blue"),
        Setting(name: "Recent Calls", picture: "phone.fill", color: "green"),
        Setting(name: "Devices", picture: "laptopcomputer", color: "orange"),
        Setting(name: "Chat Folders", picture: "folder.fill", color: "skyBlue")
    ]
    @Published var groupSecond  = [
        Setting(name: "Notifications and Sounds", picture: "app.badge", color: "red"),
        Setting(name: "Privacy and Security", picture: "lock.fill", color: "gray"),
        Setting(name: "Data and Storage", picture: "cylinder.split.1x2.fill", color: "green"),
        Setting(name: "Appearance", picture: "paintbrush.pointed.fill", color: "skyBlue"),
        Setting(name: "Language", picture: "globe", color: "purple"),
        Setting(name: "Stickers", picture: "message.circle.fill", color: "orange")
    ]
    @Published var groupThird  = [
        Setting(name: "Help", picture: "ellipsis.bubble.fill", color: "orange"),
        Setting(name: "Question about Telegram", picture: "questionmark.circle.fill", color: "skyBlue"),
        Setting(name: "Functionality of Telegram", picture: "lightbulb.fill", color: "yellow")
    ]
}
