//
//  ChakraApp.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-14.
//

import SwiftUI

@main
struct ChakraApp: App {
    @AppStorage("isOnboarding") var isOnboarding:Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
              Home()
            }
           
        }
    }
}
