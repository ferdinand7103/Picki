//
//  Payment.swift
//  MC1-C7S1
//
//  Created by Ferris Leroy Winata on 03/04/24.
//

import SwiftUI

struct Payment: View {
    var body: some View {
        
        VStack(alignment: .center){
            
            Text("Payment Summary")
                .font(.system(size: 17))
                .fontWeight(.semibold)
                .padding(.bottom,23)
            
            Text("Scan this QR to pay")
                .font(.system(size: 28))
                .fontWeight(.bold)
            
            Image("QR")
                .padding(.top,32)
                .padding(.bottom,31)
            
            HStack{
                Spacer()
                
                Text("Mie Goreng Ayam").fontWeight(.regular)
                    .font(.system(size: 14))
                
                Spacer()
                
                Text("1x").fontWeight(.regular)
                    .font(.system(size: 14))
                
                Spacer()
                
                Text("Rp15.000").fontWeight(.regular)
                    .font(.system(size: 14))
                
                Spacer()
                
            }
            .padding(.bottom,5)
            
            HStack{
                
                
                Text("Nasi Putih").fontWeight(.regular)
                    .font(.system(size: 14))
                    .padding(.leading,52)
                
                Spacer()
                
                Text("1x").fontWeight(.regular)
                    .font(.system(size: 14))
                    .padding(.leading,48)
                
                
                Spacer()
                
                Text("Rp6.000").fontWeight(.regular)
                    .font(.system(size: 14))
                    .padding(.trailing,6)
                
                Spacer()
                
            }
            .padding(.bottom,5)
            
            
            HStack{
                
                
                Text("Total").fontWeight(.bold)
                    .font(.system(size: 14))
                    .padding(.leading,52)
                
                Spacer()
                
              
                
                Text("Rp21.000").fontWeight(.bold)
                    .font(.system(size: 14))
                    .padding(.leading,145)
                
                Spacer()
                
            }
            
            Spacer()
            
            ZStack{
                
                
                
                Button(action: {
                    // Add login logic here
                }, label: {
                    Text("Upload your Receipt                                                     "       ).multilineTextAlignment(.leading)
                        .font(.system(size: 13))
                        .foregroundColor(.black)
                        .opacity(0.6)
                        .frame(width: 339, height: 39)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black.opacity(2), style: StrokeStyle(lineWidth: 0.5, dash: [3]))
                                .background(Color.white.opacity(0.5))
                        )
                    
                }
                )
                
                HStack {
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 15))
                        .foregroundColor(.black.opacity(1))
                        .padding(.trailing,45)
                        .padding(.bottom,5)
                }
                
                
            }
            Spacer()
            
            Button(action: {
                // Add login logic here
            }, label: {
                Text("Submit Order")
                    .font(.system(size: 16))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .frame(width: 339, height: 40)
                    .background(Color.gray.opacity(0.4))
                    .cornerRadius(20)
                
                }
            )
            
            Button(action: {
                // Add login logic here
            }, label: {
                Text("Back to Summary")
                    .font(.system(size: 16))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(red: 0, green: 0.573, blue: 0.424))
                    .frame(width: 339, height: 40)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(red: 0, green: 0.573, blue: 0.424))
                    )
                
                }
            )
            
            Spacer()
        }
        
    }
}

#Preview {
    Payment()
}
