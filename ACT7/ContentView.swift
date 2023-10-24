//
//  ContentView.swift
//  ACT7
//
//  Created by Fernanda M. Guzmán on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var bebidas : [Product] = [
        Product(
            image: "https://assets.stickpng.com/images/580b57fbd9996e24bc43c0eb.png",
            name: "Refresco",
            price: "$75.00"
        ),
        Product(
            image: "https://icee.mx/wp-content/uploads/ICEE_1.png",
            name: "ICEE",
            price: "$90.00"
        ),
        Product(
            image: "https://bnexteshopqa.blob.core.windows.net/images/0000617_ciel-1-l_415.png",
            name: "Agua Embotellada",
            price: "$35.00"
        )
    ]
    
    var body: some View {
        NavigationView{
            VStack {
                Grid(){
                    GridRow{
                        NavigationLink(
                            destination: ListItemsView(data: bebidas),
                            label: {
                                BtnMenuView(
                                    Img: "https://icee.mx/wp-content/uploads/ICEE_1.png",
                                    Title: "Bebidas",
                                    Primary: Color("ColorBlue"),
                                    Secondary: Color("ColorLightBlue")
                                )
                            }
                        )
                        
                        NavigationLink(
                            destination: ListItemsView(data: bebidas),
                            label: {
                                BtnMenuView(
                                    Img: "https://static.vecteezy.com/system/resources/previews/021/952/475/original/spicy-hot-dog-hot-dog-transparent-background-png.png",
                                    Title: "Alimentos",
                                    Primary: Color("ColorRed"),
                                    Secondary: Color("ColorYellow")
                                )
                            }
                        )
                    }
                    
                    GridRow{
                        NavigationLink(
                            destination: ListItemsView(data: bebidas),
                            label: {
                                BtnMenuView(
                                    Img: "https://static.vecteezy.com/system/resources/previews/024/508/506/original/nachos-isolated-on-background-with-generative-ai-png.png",
                                    Title: "Snacks",
                                    Primary: Color("ColorGreen"),
                                    Secondary: Color("ColorCyan2")
                                )
                            }
                        )
                        
                        NavigationLink(
                            destination: ListItemsView(data: bebidas),
                            label: {
                                BtnMenuView(
                                    Img: "https://static.vecteezy.com/system/resources/previews/025/064/806/original/crepe-with-ai-generated-free-png.png",
                                    Title: "Postres",
                                    Primary: Color("ColorPurple"),
                                    Secondary: Color("ColorPink")
                                )
                            }
                        )
                    }
                }
            }
            .padding(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
