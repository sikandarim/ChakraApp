//
//  Setting.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-17.
//

import SwiftUI

struct Setting: View {
    var body: some View {
        let quotes: [QuotesModel] = Bundle.main.decode("qoutes.json")
        NavigationView {
                        List {
                            ForEach(quotes) { quote in
                                NavigationLink(destination:
                                QuotesList(quotes: quote)) {
                                    SettingQuotes(quotes: quote)
                                }
                            }
                        }.navigationBarTitle("Quotes" , displayMode: .inline)
                    }
        }
    }

    struct Setting_Previews: PreviewProvider {
        static var previews: some View {
            Setting()
        }
    }

