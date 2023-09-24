//
//  SettingQuotes.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-17.
//

import SwiftUI

struct SettingQuotes: View {
    let quotes : QuotesModel
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 0){
                Rectangle()
                    .fill(Color("green"))
                VStack{
                    Text(quotes.name)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color("transparentColor"))
            }.frame(width: 300, height: 105)
        }
    }
}

struct SettingQuotes_Previews: PreviewProvider {
    static let quotes: [QuotesModel] = Bundle.main.decode("qoutes.json")
    static var previews: some View {
        SettingQuotes(quotes: quotes[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
