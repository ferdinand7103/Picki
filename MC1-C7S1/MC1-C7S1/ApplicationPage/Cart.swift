//
//  Cart.swift
//  MC1-C7S1
//
//  Created by Alifiyah Ariandri on 02/04/24.
//

import Foundation

import SwiftUI

struct Cart: View {
    var body: some View {
        VStack() {
            HStack {
                Image(systemName: "chevron.backward")
                Spacer()
            }
            
            
            Spacer().frame(height: 25)
            
            VStack() {
                Text("Order Summary")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Spacer().frame(height: 4)
                Text("Kasturi")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
            }
            Spacer().frame(height: 25)
            ItemCart(imageName: "Mie Goreng Assets", name: "Mie goreng ayam", description: "Mie goreng dengan ayam pedas.", amount: 1, notes: "jangan pedes", price: 14000).shadow(color: .gray.opacity(0.3), radius: 2)
            Spacer().frame(height: 15)
            ItemCart(imageName: "Mie Goreng Assets", name: "Mie goreng ayam", description: "Mie goreng dengan ayam pedas.", amount: 1, notes: "jangan pedes", price: 14000).shadow(color: .gray.opacity(0.3), radius: 2)
            Spacer()
            HStack {
                Text("Total").font(.system(size: 14)).fontWeight(.bold)
                Spacer()
                Text("Rp14.000").font(.system(size: 14)).fontWeight(.bold)
            }
            .padding(.horizontal, 20.0)
            .padding(.vertical, 15.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray.opacity(0.3), lineWidth: 1)
                )
            HStack {
                Text("Continue to Payment")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 12))
            }
            .frame(width: 335)
            .padding(.horizontal)
            .padding(.vertical, 15)// Menambahkan padding
            .background(Color(red: 0.0, green: 0.5725490196078431, blue: 0.4235294117647059)) // Menambahkan latar belakang putih
            .cornerRadius(30)
        }
        .padding(.horizontal)
    }
}

struct ItemCart: View {
    let imageName: String
    let name: String
    let description: String
    let amount: Int
    let notes: String
    let price: Int
    
    var body: some View {
        VStack {
            HStack {
                ImageView(imageName: imageName)
                    .background(Color(.white))
                ItemInfo(name: name, description: description, amount: amount)
                    .padding(.horizontal, 10.0)
            }
            
            
            HStack {
                HStack {
                    Image(systemName: "list.clipboard")
                    Text(notes).font(.system(size: 12))
                }
                    .frame(width: 225, height: 30)
                    .background(Color(.white))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray.opacity(0.3), lineWidth: 1)
                    )
                
                
                Spacer().frame(width: 25)
                Text("Rp\(price)").font(.system(size: 14))
            }
            .padding(.bottom, 15.0)
            
        }
        .frame(height: 175)
        .background(Color(.white))
        .cornerRadius(10)
        
        
    }
    
}

struct ItemInfo: View {
    let name: String
    let description: String
    let amount: Int
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text(name).font(.system(size: 16))
                Spacer()
                Button(action: {
                }) {
                    Image(systemName: "trash")
                        .foregroundColor(.gray)
                }
            }
            
            Spacer().frame(height: 5)
            Text(description).font(.system(size: 12)).foregroundColor(Color.gray)
            Spacer().frame(height: 5)
            Text("\(amount)x").font(.system(size: 14))
            Spacer()
        }.padding(.top, 15)
    }
}

struct ImageView: View {
    let imageName: String
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 120, height: 120) // Set the frame here
            .overlay(
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding([.top, .leading, .bottom], 15.0)
            )
    }
}

#Preview {
    Cart()
}

