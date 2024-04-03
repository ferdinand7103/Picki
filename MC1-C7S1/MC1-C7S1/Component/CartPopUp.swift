//
//  CartPopUp.swift
//  MC1-C7S1
//
//  Created by Ferdinand Jacques on 03/04/24.
//

import SwiftUI

struct CartPopUp: View{
    var name: String
    var num: Int
    var price: Int
    
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundColor(Color(red: 0, green: 0.47843137254901963, blue: 0.35294117647058826))
                .frame(width: 350, height: 60)
                .cornerRadius(10)
            Image(systemName: "cart.fill")
                .foregroundColor(Color.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding([.trailing], 280)
            VStack(alignment: .leading){
                Text(name)
                    .font(.system(size: 16))
                    .foregroundStyle(Color.white)
                    .bold()
                Text("\(num) item(s) added")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 14))
            }.padding([.trailing], 110)
            Text("Rp\(price)")
                .foregroundStyle(Color.white)
                .font(.system(size: 14))
                .bold()
                .padding([.leading], 250)
        }
    }
}

#Preview{
    CartPopUp(name: "Kasturi", num: 1, price: 5000)
}
