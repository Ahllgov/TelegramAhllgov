//
//  ItemViewContacts.swift
//  TelegramAhllgov
//
//  Created by Магомед Ахильгов on 04.09.2021.
//

import SwiftUI

struct ItemViewContacts: View {
    @Binding var item: User
    @Binding var items: [User]
    
    var body: some View {
        VStack {
            HStack{
                Image(item.picture)
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .leading)
                    .clipShape(Circle(), style: FillStyle())
                VStack(alignment: .leading, spacing: 0){
                    Text("\(item.name)")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .font(.system(size: 20))
//                        .fontWeight(.none)
                    Text("Was(re) nearly")
                        .foregroundColor(Color(#colorLiteral(red: 0.5037978888, green: 0.5038862824, blue: 0.5037862659, alpha: 1)))
                        .font(.system(size: 13))
                    Spacer()
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: 50, alignment: .leading)
            .background(Color.white)
            .padding(.horizontal, 10)
        }
        Divider()
    }
}


struct ItemViewContacts_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
