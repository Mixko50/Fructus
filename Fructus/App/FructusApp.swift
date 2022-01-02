//
//  FructusApp.swift
//  Fructus
//
//  Created by Mixko on 11/8/2564 BE.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 128)
    }
    func iconModifier() -> some View {
        self
            .imageModifier()
            .foregroundColor(.pink)
            .opacity(0.5)
    }
}

@main
struct FructusApp: App {
    private let imageURL: String = "https://image.flaticon.com/icons/png/512/1625/1625099.png"
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some Scene {
        WindowGroup {
//            AsyncImage(url: URL(string: imageURL)) { phase in
//                switch phase {
//                case .success(_) :
                    if isOnboarding {
                        OnboardingView()
                    } else {
                        ContentView()
                    }
//                case .empty:
//                    Image(systemName: "heart.fill").iconModifier()
//                case .failure(_):
//                    Image(systemName: "circle.folder.fill").iconModifier()
//                @unknown default:
//                    ProgressView()
//                }
//            }
        }
    }
}
