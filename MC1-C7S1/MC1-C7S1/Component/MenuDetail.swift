//
//  MenuDetail.swift
//  MC1-C7S1
//
//  Created by Alifiyah Ariandri on 02/04/24.
//

import Foundation

import SwiftUI

struct MenuDetail: View {
    var imageName: String
    var tenant: String
    var name: String
    var price: Int
    var primaryGreen = Color(red: 0.0, green: 0.5725490196078431, blue: 0.4235294117647059)
    
    @State var Counter : Int = 1
    @State var showErrorAlert : Bool = false
    @Binding var isPresented: Bool
    @Binding var isCartPresent: Bool
    
    var body: some View {
        VStack() {
            Image("Home")
            Spacer().frame(height: 22)
            Image(imageName)
            
            Spacer().frame(height: 22)
            
            HStack {
                VStack (alignment: .leading) {
                    Text(name)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    Spacer().frame(height: 5)
                    Text("Mie goreng dengan ayam pedas.")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 14))
                }
                Spacer().frame(width: 55)
                Text("Rp\(price)").font(.system(size: 16))
            }
            Spacer().frame(height: 40)
            
            HStack {
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "list.clipboard")
                            .foregroundColor(primaryGreen)
                        Text("Add Notes")
                            .foregroundColor(primaryGreen) // Menyesuaikan warna teks dengan warna ikon
                            .font(.system(size: 14))
                    }
                    .padding(.horizontal, 50)
                    .padding(.vertical, 10)// Menambahkan padding
                    .background(Color.white) // Menambahkan latar belakang putih
                    .cornerRadius(5) // Memberikan radius sudut
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(primaryGreen, lineWidth: 1)
                    )
                }
                
                Spacer().frame(width: 16)
                
                Button(action: {
//                    if Counter - 1 <= 1 {
//                        
//                        // Alert Disini
//                        Alert(title: Text("Error Purchasing"),
//                              message: Text("You have to buy at least 1 food"),
//                              primaryButton:
//                                .default(Text("Add 1"), action: {
//                                    Counter = 1
//                                }), 
//                            secondaryButton:
//                                .cancel(Text("Cancel Buy"), action:{
//                                    // tutup bagian ininya
//                                }))
//                        
//                        
//                    }else{
//                        Counter -= 1
//                        
//                    }
                    if Counter > 1 {
                        Counter -= 1
                    } else {
                        showErrorAlert = true
                    }

                }) {
                    Text("-")
                        .foregroundColor(Color.green) // Warna teks hijau tua
                        .padding() // Menambahkan padding untuk memperluas area sentuhan
                        .font(.system(size: 12))
                    
                    
                }
                .background(Color.green.opacity(0.3)) // Warna latar belakang hijau muda dengan opasitas 0.3
                .clipShape(Circle())
                .alert(isPresented: $showErrorAlert) {
                
                    Alert(title: Text("Error Purchasing"),
                          message: Text("You have to buy at least 1 food"),
                          primaryButton:
                            .default(Text("Add 1"), action: {
                                Counter = 1
                            }),
                          secondaryButton:
                            .destructive(Text("Cancel Buy"), action:{
                                // tutup bagian ininya
                            }))
                }
                
                
                HStack {
                    Text("\(Counter)")
                        .foregroundColor(.green) // Menyesuaikan warna teks dengan warna ikon
                        .font(.system(size: 12))
                    
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)// Menambahkan padding
                .background(Color.green.opacity(0.3)) // Menambahkan latar belakang putih
                .cornerRadius(10)
                
                
                
                Button(action: {
                    Counter += 1
                }) {
                    Text("+")
                        .foregroundColor(Color.green) // Warna teks hijau tua
                        .padding() // Menambahkan padding untuk memperluas area sentuhan
                        .font(.system(size: 12))
                    
                    
                }
                .background(Color.green.opacity(0.3)) // Warna latar belakang hijau muda dengan opasitas 0.3
                .clipShape(Circle())
            }
            
            Spacer().frame(height: 14)
            
            Button(action: {
                isCartPresent = true
                isPresented = false
            }){
                HStack {
                    Text("Add to Cart")
                        .fontWeight(.bold)
                        .foregroundColor(.white) // Menyesuaikan warna teks dengan warna ikon
                        .font(.system(size: 12))
                }
                .padding(.horizontal, 140)
                .padding(.vertical, 15)// Menambahkan padding
                .background(Color(red: 0.0, green: 0.5725490196078431, blue: 0.4235294117647059)) // Menambahkan latar belakang putih
                .cornerRadius(30) // Memberikan radius sudut
                
            }
        }.padding([.top], 20)
    }
}

#Preview {
    MenuDetail(imageName: "Mie Goreng Assets", tenant: "Kasturi", name: "Nasi Putih", price: 5000, isPresented: .constant(true), isCartPresent: .constant(true))
}
