//
//  ContentView.swift
//  TelegramAhllgov
//
//  Created by Магомед Ахильгов on 30.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactsView()
                .tabItem { Image(systemName: "person.crop.circle.fill")
                    Text("Contacts").font(.system(size: 30)) }
            ChatsView()
                .tabItem { Image(systemName: "message")
                    Text("Chats").font(.system(size: 30)) }
            SettingsView()
                .tabItem { Image(systemName: "gear")
                    Text("Settings").font(.system(size: 30)) }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
