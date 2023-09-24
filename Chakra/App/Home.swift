//
//  Home.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-18.
//

import SwiftUI

struct Home: View {
   
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    Image(systemName: "house.fill")
                        Text("Home")
                }
            ChakraListView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
            Wisdom()
                .tabItem {
                    Image(systemName: "book")
                    Text("Wisdom")
                }
            Setting()
                .tabItem {
                Image(systemName: "map")
                Text("Temples")
                }
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
