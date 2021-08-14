//
//  FruitModel.swift
//  Fructus
//
//  Created by Mixko on 14/8/2564 BE.
//

import SwiftUI

///Mark : Fruit data model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
