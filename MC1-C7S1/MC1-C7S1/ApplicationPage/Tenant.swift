//
//  Tenant.swift
//  MC1-C7S1
//
//  Created by Ferdinand Jacques on 28/03/24.
//

import SwiftUI

struct Tenant: View{
    @State var searchText = ""
    
    var body: some View {
        NavigationView{
            VStack {
                HStack (alignment: .center) {
                    VStack (alignment: .leading) {
                        Text("Welcome to")
                            .font(.system(size: 20))
                            .foregroundStyle(Color.white)
                            .bold()
                        Text("GOP 9 Green Eatery")
                            .font(.system(size: 27))
                            .foregroundStyle(Color.white)
                            .bold()
                    }.padding([.trailing], 90)
                        .padding([.top], 20)
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background {
                        Image("background")
                            .scaledToFit()
                }.padding([.top], 80)
                ZStack{
                    SearchBar()
                        .padding([.bottom], 625)
                        .frame(width: 380)
                    VStack{
                        VStack(alignment: .leading){
                            Text("Select the tenant")
                                .font(.custom("SF Pro", size: 20))
                                .bold()
                            ScrollView{
                                    HStack{
                                        NavigationLink(destination: Kasturi().navigationBarBackButtonHidden()){
                                            cardTenant(imageName: "Kasturi", name: "Kasturi", time: "7 - 12 min")
                                        }
                                        cardTenant(imageName: "Dapoer", name: "Dapoer Cowek", time: "5 - 10 min")
                                    }.padding([.bottom], 180)
                                HStack{
                                    cardTenant(imageName: "Ahza", name: "Ahza Snack and \nBeverages", time: "10 - 15 min")
                                    cardTenant(imageName: "Joss", name: "Ikan & Bakso \nMalang JOOSSS", time: "10 - 15 min")
                                }.padding([.top], -180)
                                HStack{
                                    cardTenant(imageName: "Lading", name: "La Ding", time: "10 - 15 min")
                                    cardTenant(imageName: "Pawon", name: "Pawon Bunda", time: "10 - 15 min")
                                }
                                HStack{
                                    cardTenant(imageName: "Mustafa", name: "Mustafa Minang", time: "10 - 15 min")
                                    cardTenant(imageName: "AR", name: "Kedai Aneka Rasa", time: "10 - 15 min")
                                }
                                HStack{
                                    cardTenant(imageName: "LM", name: "Kedai Laris Manis", time: "10 - 15 min")
                                    cardTenant(imageName: "Gembul", name: "Kedai Pak Gembul", time: "7 - 12 min")
                                }
                                HStack{
                                    cardTenant(imageName: "Wartas", name: "Wartas Ibu Iwan", time: "10 - 15 min")
                                    cardTenant(imageName: "Mie", name: "Mie Ayam Kriuk", time: "10 - 15 min")
                                }.padding([.bottom], 70)
                            }
                        }.padding([.top], 20)
                    }.padding([.top], 50)
                }.padding([.top], 50)
            }
        }
    }
}

#Preview {
    Tenant()
}

