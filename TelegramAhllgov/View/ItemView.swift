//
//  ItemView.swift
//  TelegramAhllgov
//
//  Created by Магомед Ахильгов on 30.08.2021.
//

import SwiftUI

struct ItemView: View {
    @Binding var item: User
    @Binding var items: [User]
    
    var body: some View {
        ZStack{
            HStack(spacing: 0){
                Spacer()
                Button(action: {
                    withAnimation(.easeIn){
                        deleteItem()
                    }
                }){
                    Image(systemName: "trash")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 90, height: 80)
                        .background(Color.red)
                    
                }
                Button(action: {
                    withAnimation(.easeIn){
                        
                    }
                }){
                    Image(systemName: "archivebox")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 90, height: 80)
                        .background(Color.blue)
                }
            }
            HStack{
                Image(item.picture)
                    .resizable()
                    .frame(width: 45, height: 45, alignment: .leading)
                    .clipShape(Circle(), style: FillStyle())
                    .padding()
                VStack(alignment: .leading, spacing: 10){
                    Spacer()
                    Text("\(item.name)")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                    Text("\(item.message)")
                        .foregroundColor(Color(#colorLiteral(red: 0.5037978888, green: 0.5038862824, blue: 0.5037862659, alpha: 1)))
                        .font(.system(size: 15))
                    Spacer()
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: 80, alignment: .leading)
            .background(Color.white)
            .contentShape(Rectangle())
            .offset(x: item.offset)
            .gesture(DragGesture().onChanged(onChanged(value:))
                        .onEnded(onEnded(value:)))
        }
        Divider()
        
    }
    func onChanged(value: DragGesture.Value){
        if value.translation.width < 0 {
            if item.isSwipped {
                item.offset = value.translation.width - 180
            } else {
                item.offset = -180
                
            }
        }
    }
    func onEnded(value: DragGesture.Value) {
        withAnimation(.easeOut) {
            if -value.translation.width > 0 {
                
                if -value.translation.width > UIScreen.main.bounds.width / 2 {
                    item.offset = -1000
                    deleteItem()
                } else if -item.offset > 50 {
                    item.isSwipped = true
                    item.offset = -180
                } else {
                    item.isSwipped = false
                    item.offset = 180
                }
                
            } else {
                item.isSwipped = false
                item.offset = 0
            }
        }
    }
    func deleteItem(){
        items.removeAll{(item) -> Bool in
            return self.item.id == item.id
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
