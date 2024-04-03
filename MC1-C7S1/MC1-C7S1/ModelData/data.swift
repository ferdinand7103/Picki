//
//  tenantData.swift
//  MC1-C7S1
//
//  Created by Reynard Octavius Tan on 02/04/24.
//

import Foundation

var noImage : String = "no-preview"

struct foodData{
    var idFood : UUID
    var nameFood : String
    var priceFood : Int
    var descFood : String
    var imageFood : String
    
}

struct TenantData{
    var idTenant : UUID
    var nameTenant : String
    var durrTenant : String // duration buat bikin makanannya - > bikin string aja dulu nanti baru di bikin dynamic
    var rateTenant : Double
    var imageTenant : String
    
    var foodTenant: [foodData]
}

let tenant1 = TenantData(idTenant: UUID(), nameTenant: "Kasturi", durrTenant: "7 - 12", rateTenant: 4.5, imageTenant: "Kasturi",
                         foodTenant: [
                            foodData(idFood: UUID(), nameFood: "Nasi Putih", priceFood: 5000, descFood: "Nasi putih yang pulen dan wangi", imageFood: noImage),
                            foodData(idFood: UUID(), nameFood: "Nasi Goreng", priceFood: 15000, descFood: "Digoreng dengan Cita Rasa yang menarik", imageFood: noImage),
                            foodData(idFood: UUID(), nameFood: "Mie Goreng", priceFood: 18000, descFood: "Mie Goreng dengan ayam pedas", imageFood: noImage),
                            foodData(idFood: UUID(), nameFood: "Ayam Goreng", priceFood: 8000, descFood: "Ayam digoreng krispi dengan bumbu yang menarik", imageFood: noImage)
                            // add more data in Here
                            
                         ])

let tenant2 = TenantData(idTenant: UUID(), nameTenant: "Dapoer Cowek", durrTenant: "5 - 10", rateTenant: 4.2, imageTenant: "Dapoer",
                         foodTenant: [
                            foodData(idFood: UUID(), nameFood: "Nasi Putih", priceFood: 5000, descFood: "Nasi putih yang pulen dan wangi", imageFood: noImage),
                            foodData(idFood: UUID(), nameFood: "Nasi Goreng", priceFood: 15000, descFood: "Digoreng dengan Cita Rasa yang menarik", imageFood: noImage),
                            foodData(idFood: UUID(), nameFood: "Mie Goreng", priceFood: 18000, descFood: "Mie Goreng dengan ayam pedas", imageFood: noImage),
                            foodData(idFood: UUID(), nameFood: "Ayam Goreng", priceFood: 8000, descFood: "Ayam digoreng krispi dengan bumbu yang menarik", imageFood: noImage)
                         ])


let tenant3 = TenantData(idTenant: UUID(), nameTenant: "Wong Jowo", durrTenant: "9 - 12", rateTenant: 4.2, imageTenant: "wong",
                         foodTenant: [
                            foodData(idFood: UUID(), nameFood: "Nasi Putih", priceFood: 5000, descFood: "Nasi putih yang pulen dan wangi", imageFood: noImage),
                            foodData(idFood: UUID(), nameFood: "Nasi Goreng", priceFood: 15000, descFood: "Digoreng dengan Cita Rasa yang menarik", imageFood: noImage),
                            foodData(idFood: UUID(), nameFood: "Mie Goreng", priceFood: 18000, descFood: "Mie Goreng dengan ayam pedas", imageFood: noImage),
                            foodData(idFood: UUID(), nameFood: "Ayam Goreng", priceFood: 8000, descFood: "Ayam digoreng krispi dengan bumbu yang menarik", imageFood: noImage)
                         ])
