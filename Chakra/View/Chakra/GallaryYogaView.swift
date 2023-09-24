//
//  GallaryYogaView.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-17.
//

import SwiftUI

struct GallaryYogaView: View {
    let chakras: Chakras
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack (alignment: .center, spacing: 15){
                ForEach(chakras.yoga, id:\.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(15)
                }
            }
        }
    }
}

struct GallaryYogaView_Previews: PreviewProvider {
    static let chakras: [Chakras] = Bundle.main.decode("chakras.json")
    static var previews: some View {
        GallaryYogaView(chakras: chakras[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
