//
//  ChatsView.swift
//  TelegramAhllgov
//
//  Created by Магомед Ахильгов on 30.08.2021.
//

import SwiftUI

struct ChatsView: View {
    
    @State var showSearch = true
    @State var searchChats = ""
    
    @StateObject var userData = UserViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Edit")
                })
                Spacer()
                Text("Chats")
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "square.and.pencil")
                })
            }
            .padding()
            //SearchField
            if showSearch == true {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 23, weight: .bold))
                        .foregroundColor(.gray)
                    TextField("Search", text: $searchChats)
                        .foregroundColor(Color.black)
                    
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).frame(width: UIScreen.main.bounds.width - 15, height: 51))
                .foregroundColor(.gray.opacity(0.15))
            }
            Divider()
            ScrollView(.vertical, showsIndicators: false, content: {
                LazyVStack(alignment: .leading, spacing: 0, content: {
                    ForEach(userData.items){ item in
                        
                        ItemView(item: $userData.items[getIndex(item: item)],items: $userData.items)
                        
                    }
                })
            })
        }
    }
    func getIndex(item: User)-> Int{
        
        return userData.items.firstIndex { (item1) -> Bool in
            return item.id == item1.id
        } ?? 0
    }
}


struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
