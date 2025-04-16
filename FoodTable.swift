//
//  FoodTable.swift
//  SpoonfulTest
//
//  Created by Mya Amaya on 4/3/25.
//

import SwiftUI

struct FoodTable: Identifiable {
    let id = UUID().uuidString
    let name: String
    let imageName: String  // Changed UIImage to String for asset names
}

class FoodViewModel: ObservableObject {
    @Published var foodlist: [FoodTable] = [
        .init(name: "Ground Turkey Pasta", imageName: "TurkeyPastaPic"),
        .init(name: "Chicken Alfredo", imageName: "chickenAlfredo"),
        .init(name: "Bourbon Glazed Salmon", imageName: "burbonGlazedSalmon"),
        .init(name: "Pico De Gallo", imageName: "picoDeGallo"),
        .init(name: "Garlic Butter Chicken", imageName: "garlicButterChicken")
    ]
}
