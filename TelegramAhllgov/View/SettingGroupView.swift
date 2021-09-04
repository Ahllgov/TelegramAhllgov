//
//  SettingGroupView.swift
//  TelegramAhllgov
//
//  Created by Магомед Ахильгов on 30.08.2021.
//

import SwiftUI

struct SettingGroupView: View {
    @Binding var group: Setting
    
    var body: some View {
        HStack{
            Image(systemName: group.picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 5).frame(width: 30, height: 30).foregroundColor(Color("\(group.color)")))
            Text("\(group.name)")
                .foregroundColor(.black)
                .padding(.horizontal, 10)
            Spacer()
        }
    }
}

struct SettingGroupView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

