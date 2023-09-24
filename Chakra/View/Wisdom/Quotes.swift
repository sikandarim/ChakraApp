//
//  Quotes.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-17.
//

import SwiftUI

struct Quotes: View {
    let wisdom : Wisdoms
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                Image("wisdom")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                Group {
                    Text("What is Wisdom")
                        .font(.title)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 4)
                    Text(wisdom.wisdomQuote)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                Group {
                    Text("The seven rules of wisdom")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 8)
                        .foregroundColor(.primary)
                    Text("Expand Your Horizons")
                        .font(.title3)
                        .bold()
                    Text(wisdom.wisdomOne)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                    Text(" Fool's Gold")
                        .font(.title3)
                        .bold()
                    Text(wisdom.wisdomTwo)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                    Text("Know What You Control")
                        .font(.title3)
                        .bold()
                    Text(wisdom.wisdomThree)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                    Text("Kindness Counts")
                        .font(.title3)
                        .bold()
                    Group {
                        Text(wisdom.wisdomFour)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                        Text("Value True Friendship")
                            .font(.title3)
                            .bold()
                        Text(wisdom.wisdomFive)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                        Text("Sound Mind")
                            .font(.title3)
                            .bold()
                        Text(wisdom.wisdomSix)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                        Text("This Life Is Yours")
                            .font(.title3)
                            .bold()
                        Text(wisdom.wisdomSeven)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                        
                    }
                    
                }.padding(.horizontal)
                
            }
        }
    }
}
struct Quotes_Previews: PreviewProvider {
    static let wisdom: Wisdoms = Bundle.main.decode("wisdom.json")
    static var previews: some View {
        Quotes(wisdom: wisdom)
    }
}
