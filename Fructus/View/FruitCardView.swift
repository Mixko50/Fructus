//
//  FruitCardView.swift
//  Fructus
//
//  Created by Mixko on 12/8/2564 BE.
//

import SwiftUI

struct FruitCardView: View {
    
    ///MARK: - Properties
    ///
    ///MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                ///FRUIT: Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                ///Fruit : Title
                Text("Bluberrey")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 8, x: 0, y: 2)
                ///Fruit : Headline
                ///Button : Start
            }///VStack
        }///Zstack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}

    ///Mark - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
