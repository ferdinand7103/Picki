//
//  SearchBar.swift
//  MC1-C7S1
//
//  Created by Ferdinand Jacques on 02/04/24.
//

import SwiftUI

struct SearchBar: View{
    @State var searchText = ""
    
    var body: some View{
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ?  Color(red: 0.570, green: 0.570, blue: 0.570) : Color(red: 0, green: 0, blue: 0))
            TextField("Find tenant or food", text: $searchText)
                .foregroundColor(Color(red: 0, green: 0, blue: 0))
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(Color(red: 0, green: 0, blue: 0))
                        .padding()
                        .offset(x: 10)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                             searchText = ""
                        }
//                        .searchable(text: $searchText) Komen dlu karena belom search
                    ,alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(red: 1, green: 1, blue: 1))
                .shadow(color: Color(red: 0, green: 0, blue: 0).opacity(0.15), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 0)
        )
    }
}

#Preview{
    SearchBar()
}
