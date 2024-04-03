import SwiftUI

struct LineMenu: View {
    var image : String
    var text : String
    var harga : Int

    var body: some View {
        HStack {
            Image(image)
            VStack(alignment: .leading) {
                Text(text).font(.system(size: 16))
                    .padding(.bottom,1)
                    .fontWeight(.regular)
                    .padding(.leading,5)
                Text("Rp\(harga)").font(.system(size: 14)).opacity(0.5)
                    .padding(.leading, 6)
            }
            .padding(.bottom,20)
            Spacer()
        } .padding([.trailing,.leading], 30)
        
    }
}

#Preview{
    LineMenu(image: "nasi", text: "Nasi Putih", harga: 5000)
}
