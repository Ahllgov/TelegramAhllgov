//
//  SettingViewModel.swift
//  TelegramAhllgov
//
//  Created by Магомед Ахильгов on 30.08.2021.
//

import SwiftUI

class SettingViewModel: ObservableObject {
    @Published var groupFirst  = [
        Setting(name: "Saved Messages", picture: "bookmark.fill"),
        Setting(name: "Recent Calls", picture: "phone.fill"),
        Setting(name: "Devices", picture: "laptopcomputer"),
        Setting(name: "Chat Folders", picture: "folder.fill")
        
    ]
    @Published var groupSecond  = [
        Setting(name: "Notifications and Sounds", picture: "app.badge"),
        Setting(name: "Privacy and Security", picture: "lock.fill"),
        Setting(name: "Data and Storage", picture: "cylinder.split.1x2.fill"),
        Setting(name: "Appearance", picture: "paintbrush.pointed.fill"),
        Setting(name: "Language", picture: "globe"),
        Setting(name: "Stickers", picture: "rectangles.group.bubble.left.fill")
        
    ]

}
