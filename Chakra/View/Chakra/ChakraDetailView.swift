//
//  ChakraDetailView.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-16.
//

import SwiftUI

struct ChakraDetailView: View {
    // MARK: - PROPERTIES
    let chakras: Chakras
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                
                // Chakra Image
                Image(chakras.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .padding()
              
                // Title
                Text(chakras.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color(chakras.color)
                            .frame(height: 6)
                            .offset(y:24)
                    )
                //HeadLine
                Text(chakras.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
             
                Group{
                    Text("What is \(chakras.name) chakra?")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 8)
                        .foregroundColor(.primary)
                    
                    Text(chakras.chakraIs)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }.padding(.horizontal)
                
                Group{
                    Text("Signs of \(chakras.name) chakra is closed")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 8)
                        .foregroundColor(.primary)
                    
                    Text(chakras.descriptionclosed)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }.padding(.horizontal)
               
                Group{
                    Text("How to open \(chakras.name) chakra?")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 8)
                        .foregroundColor(.primary)
                    
                    Text("1. Burn incense and essential oils")
                        .font(.title3)
                        .bold()
                    Text(chakras.chakraessentialOils)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                    
                    Text("2. Positive affirmation")
                        .font(.title3)
                        .bold()
                    AffirmationView(chakras: chakras)
                    Text("3. Yoga Poses")
                        .font(.title3)
                        .bold()
                    GallaryYogaView(chakras: chakras)
                
                       
                }.padding(.horizontal)
                
                Group{
                  HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                }.padding(.horizontal)
                ExternalWeblink(chakras: chakras)
              
                
            }//:VSTACK
            .navigationBarTitle("\(chakras.name) chakra" , displayMode: .inline)
        }//: SCROLL
    }
}

struct ChakraDetailView_Previews: PreviewProvider {
    static let chakras: [Chakras] = Bundle.main.decode("chakras.json")
    static var previews: some View {
        NavigationView {
            ChakraDetailView(chakras: chakras[0])
        }
      
    }
}
