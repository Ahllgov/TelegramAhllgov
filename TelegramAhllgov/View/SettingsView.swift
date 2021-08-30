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
                        .foregroundColor(Color.white)
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
            Spacer()
            List{
                Section(header: Text("User Staff").font(.system(.caption))){
                    ForEach(settingsData.groupFirst){ gr in
                        
                        SettingGroupView(group: $settingsData.groupFirst[getIndex(item: gr)],groups: $settingsData.groupFirst)
                    }
                }
                Section(header: Text("Telegram Settings").font(.system(.caption))){
                    ForEach(settingsData.groupSecond){ gr in
                        
                        SettingGroupView(group: $settingsData.groupSecond[getIndex(item: gr)],groups: $settingsData.groupSecond)
                    }
                }
            }
        }
    }
    func getIndex(item: Setting)-> Int{
        
        return settingsData.groupFirst.firstIndex { (item1) -> Bool in
            return item.id == item1.id
        } ?? 0
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
