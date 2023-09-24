//
//  QuotesList.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-18.
//

import SwiftUI

struct QuotesList: View {
    let quotes : QuotesModel
    var body: some View {
        List {
            VStack{
                ForEach(quotes.quotes, id:\.self){ item in
                    
                    VStack{
                        Text(item)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                    }
                    
                    .padding(.vertical, 0)
                    .padding(.horizontal, 0)
                    .frame(width: 281, height: 150)
                    .background(Color("transparentColor"))
                }.frame(width: 300, height: 150)
            }
        }
    }
}

struct QuotesList_Previews: PreviewProvider {
    static let quotes: [QuotesModel] = Bundle.main.decode("qoutes.json")
    static var previews: some View {
        QuotesList(quotes: quotes[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
