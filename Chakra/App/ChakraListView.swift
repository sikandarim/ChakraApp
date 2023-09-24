//
//  Gallary.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-16.
//

import SwiftUI

struct ChakraListView: View {
    var body: some View {
        //MARK: - PROPERTIES
        let chakras: [Chakras] = Bundle.main.decode("chakras.json")
        NavigationView {
            List {
                ForEach(chakras) { chakra in
                    NavigationLink(destination: ChakraDetailView(chakras: chakra)) {
                        ChakraColumnListView(chakras: chakra)
                    }
                    
                }
            } .navigationBarTitle("Chakras" , displayMode: .automatic)
        }
        
    }
}

struct Gallary_Previews: PreviewProvider {
    static var previews: some View {
        ChakraListView()
    }
}
