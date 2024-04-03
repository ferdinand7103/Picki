import SwiftUI

struct Kasturi: View {
    let name = "Kantin Kasturi"
    @State var searchText = ""
    @StateObject var isPopupVisible1 = Show()
    @StateObject var isPopupVisible2 = Show()
    @StateObject var isCartShow = Show()
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    NavigationLink(destination: Tenant().navigationBarBackButtonHidden()) {
                        HStack {
                            Image(systemName: "chevron.backward")
                            Text("Back")
                        }
                        .foregroundColor(.green)
                    }
                    HStack {
                        Text(name)
                            .font(.system(size: 17))
                            .fontWeight(.semibold)
                          
                        .foregroundColor(.black)
                        Spacer()
                    } .padding(.leading,45)
                } .padding(.leading, 28) .padding(.top, 10)
                ZStack {
                    HStack {
                        Image(systemName: "magnifyingglass").font(.system(size: 17))
                            .foregroundColor(.black)
                            .opacity(0.7)
                            .padding(.leading,35)
                            .padding(.top,5)
                    
                            .opacity(0.5)
                        Spacer()
                    }
                    
                    TextField("Find food at Kantin Kasturi", text: $searchText)
                        .foregroundColor(.black)
                        .opacity(1)
                        .padding(8)
                        .padding(.leading,27)
                        .frame(width: 340, height: 36)
                        .background(Color.gray.opacity(0.08))
                        .shadow(radius: 10)
                        .cornerRadius(10)
                        .padding(.top, 5)
                        .overlay(
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(Color(red: 0, green: 0, blue: 0))
                                .padding([.trailing], 15)
                                .padding([.top], 7)
                                .offset(x: 10)
                                .opacity(searchText.isEmpty ? 0.0 : 1.0)
                                .onTapGesture {
                                     searchText = ""
                                }
        //                        .searchable(text: $searchText) Komen dlu karena belom search
                            ,alignment: .trailing
                        )
                } .padding(.top, 0)
                    .padding(.bottom,20)

                //Menu Makanan Baris 1
                
                ScrollView{
                    
                    LineMenu(image: "nasi", text: "Nasi Putih", harga: 5000)
                        .onTapGesture {
                            isPopupVisible1.isPresented.toggle()
                        }
                        .sheet(isPresented: $isPopupVisible1.isPresented){
                            MenuDetail(imageName: "nasiP", tenant: "Kasturi", name: "Nasi Putih", price: 5000, isPresented: $isPopupVisible1.isPresented, isCartPresent: $isCartShow.isCartPresent)
                                .presentationDetents([.height(580)])
                        }
                    
                    Divider().padding([.top,.bottom], 1)
                        .padding([.leading,.trailing],25)
                    
                    LineMenu(image: "miegoreng", text: "Mie Goreng Ayam", harga: 15000)
                        .onTapGesture {
                            isPopupVisible2.isPresented.toggle()
                        }
                        .sheet(isPresented: $isPopupVisible2.isPresented){
                            MenuDetail(imageName: "Mie Goreng Assets", tenant: "Kasturi", name: "Mie Goreng", price: 15000, isPresented: $isPopupVisible2.isPresented, isCartPresent: $isCartShow.isCartPresent)
                                .presentationDetents([.height(580)])
                        }
                    
                    Divider().padding([.top,.bottom], 1)
                        .padding([.leading,.trailing],25)
                    
                    LineMenu(image: "telor", text: "Telor Balado", harga: 5000)
                    
                    Divider().padding([.top,.bottom], 1)
                        .padding([.leading,.trailing],25)
                    
                    LineMenu(image: "bakwan", text: "Bakwan Jagung", harga: 5000)

                    Divider().padding([.top,.bottom], 1)
                        .padding([.leading,.trailing],25)
                    
                    LineMenu(image: "dadar", text: "Telur Dadar", harga: 4000)

                    Divider().padding([.top,.bottom], 1)
                        .padding([.leading,.trailing],25)
                    
                    LineMenu(image: "tauge", text: "Sayur Tauge", harga: 15000)
                    
                    Divider().padding([.top,.bottom], 1)
                        .padding([.leading,.trailing],25)
                    
                    LineMenu(image: "tempe", text: "Tempe Orek Balado", harga: 15000)
                } .ignoresSafeArea()
            }.padding(.top,1)
        }
        if(isCartShow.isCartPresent){
            CartPopUp(name: name, num: 1, price: 5000)
        }
    }
}

#Preview {
    Kasturi()
}
