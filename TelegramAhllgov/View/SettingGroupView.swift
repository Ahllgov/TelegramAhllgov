//
//  SettingGroupView.swift
//  TelegramAhllgov
//
//  Created by Магомед Ахильгов on 30.08.2021.
//

import SwiftUI

struct SettingGroupView: View {
    @Binding var group: Setting
    @Binding var groups: [Setting]
    
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 35, height: 35)
                .foregroundColor(.blue.opacity(0.3))
                .background(Image(systemName: group.picture)
                                .font(.system(size: 20))
                                .foregroundColor(.black))
            Text("\(group.name)")
                .foregroundColor(.black)
            Spacer()
        }
    }
}

struct SettingGroupView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

