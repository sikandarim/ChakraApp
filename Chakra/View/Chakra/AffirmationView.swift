//
//  AffirmationView.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-17.
//

import SwiftUI

struct AffirmationView: View {
    let chakras: Chakras
    var body: some View {
        GroupBox {
            TabView {
                ForEach(chakras.affirmation, id:\.self) { item in
                    Text(item)
                }
              
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
            .background(Color(chakras.color))
            
        }
    }
}

struct AffirmationView_Previews: PreviewProvider {
    static let chakras: [Chakras] = Bundle.main.decode("chakras.json")
    static var previews: some View {
        AffirmationView(chakras: chakras[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
