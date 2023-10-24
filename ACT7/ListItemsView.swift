//
//  ListItemsView.swift
//  ACT7
//
//  Created by Fernanda M. Guzmán on 17/10/23.
//

import SwiftUI

struct ListItemsView: View {
    
    var data : [Product]
    
    var body: some View {
        VStack(){
            ScrollView(.horizontal){
                HStack(spacing: 10){
                    ForEach(data) { item in
                        ItemView(
                            img: item.image,
                            name: item.name,
                            price: item.price
                        )
                    }
                }
            }.padding()
            Spacer()
        }
    }
}

struct ListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemsView(data: [])
    }
}
