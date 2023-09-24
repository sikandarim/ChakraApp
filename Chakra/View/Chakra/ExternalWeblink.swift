//
//  ExternalWeblink.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-17.
//

import SwiftUI

struct ExternalWeblink: View {
    let chakras: Chakras
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    
                    Link(chakras.name, destination: URL(string: chakras.link) ?? URL(string: "https://wikipedia.org")!)
                }
                .foregroundColor(Color(chakras.color))
            }
        }
    }
}

struct ExternalWeblink_Previews: PreviewProvider {
    static let chakras: [Chakras] = Bundle.main.decode("chakras.json")
    static var previews: some View {
        ExternalWeblink(chakras: chakras[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
