//
//  ChakraHistory.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-17.
//

import SwiftUI

struct ChakraHistory: View {
    let history : History
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Group{
                
                Text("The History Of Chakra")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                Text(history.chakraHistory)
                    .multilineTextAlignment(.leading)
                    .layoutPriority(1)
            }
            
            Group{
                
                Text("What is Chakra?")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                Text(history.chakra)
                    .multilineTextAlignment(.leading)
                    .layoutPriority(1)
            }
        }
    }
}

struct ChakraHistory_Previews: PreviewProvider {
    static let history: History = Bundle.main.decode("history.json")
    static var previews: some View {
        ChakraHistory(history:history )
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
