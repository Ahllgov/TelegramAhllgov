//
//  SettingsView.swift
//  TelegramAhllgov
//
//  Created by Магомед Ахильгов on 30.08.2021.
//

import SwiftUI

struct SettingsView: View {
    
    @StateObject var settingsData = SettingViewModel()
    
    var body: some View {
            VStack {
                HStack(alignment: .top) {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Edit")
                            .foregroundColor(Color.clear)
                    })
                    Spacer()
                    
                    VStack {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 100))
                        Text("My name")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                        Text("8 800 555 35 55")
                            .foregroundColor(.gray)
                            .lineLimit(1)
                            .scaledToFill()
                            .padding(.top,1)
                        Text("@ahllgov")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Edit")
                    })
                }
                .padding(.horizontal)
                List{
                    Section(header: Text("header").font(.system(.caption)).foregroundColor(.clear)) {
                        ForEach(settingsData.groupFirst.indices, id: \.self) { itemIndex in
                            SettingGroupView(group: $settingsData.groupFirst[itemIndex])
                        }
                    }
                    Section(header: Text("header").font(.system(.caption)).foregroundColor(.clear)) {
                        ForEach(settingsData.groupSecond.indices, id: \.self) { itemIndex in
                            SettingGroupView(group: $settingsData.groupSecond[itemIndex])
                        }
                    }
                    Section(header: Text("header").font(.system(.caption)).foregroundColor(.clear)) {
                        ForEach(settingsData.groupThird.indices, id: \.self) { itemIndex in
                            SettingGroupView(group: $settingsData.groupThird[itemIndex])
                        }
                    }
                    Spacer(minLength: 100)
                }
            }
        }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
