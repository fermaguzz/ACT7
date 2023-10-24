//
//  BtnMenuView.swift
//  ACT7
//
//  Created by Fernanda M. Guzmán on 17/10/23.
//

import SwiftUI

extension String {
    func loadImage() -> UIImage {
        do{
            // Convert IMG to URL
            guard let url = URL(string: self) else {
                return UIImage()
            }
            
            let data : Data = try Data(contentsOf: url)
            return UIImage(data: data) ?? UIImage()
        } catch {}
        
        return UIImage()
    }
}


struct BtnMenuView: View {
    
    var Img : String
    var Title : String
    var Primary : Color
    var Secondary : Color
    
    var body: some View {
        VStack{
            Image(uiImage: Img.loadImage())
                .resizable()
                .aspectRatio(contentMode: .fit )
                .frame(width: 140, height: 140)
            Text(Title)
                .font(Font.system(size: 25).bold())
                .foregroundColor(Color.white)
                .textCase(.uppercase)
        }
        .padding()
        .background(LinearGradient(
            gradient: Gradient(
                colors:
                    [
                        Primary,
                        Secondary
                    ]),
            startPoint: .bottomLeading,
            endPoint: .topTrailing
        ))
        .cornerRadius(10)
    }
}

struct BtnMenuView_Previews: PreviewProvider {
    static var previews: some View {
        BtnMenuView(
            Img: "https://icee.mx/wp-content/uploads/ICEE_1.png",
            Title: "Titulo",
            Primary: Color("ColorBlue"),
            Secondary: Color("ColorLightBlue")
        )
    }
}

