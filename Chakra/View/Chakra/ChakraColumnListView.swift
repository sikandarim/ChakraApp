//
//  ChakraListView.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-16.
//

import SwiftUI

struct ChakraColumnListView: View {
  
    let chakras : Chakras
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(chakras.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                RoundedRectangle(cornerRadius: 16)
                )
        
            VStack(alignment: .leading, spacing: 8) {
                Text(chakras.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(chakras.color))
           
            }
        }
    }
}

struct ChakraListView_Previews: PreviewProvider {
   static let chakras: [Chakras] = Bundle.main.decode("chakras.json")
    static var previews: some View {
        ChakraColumnListView(chakras: chakras[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
