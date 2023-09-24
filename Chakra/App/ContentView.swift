//
//  ContentView.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let history: History = Bundle.main.decode("history.json")
        //MARK: - BODY
        NavigationView {
           
            List {
                CoverImageView()
                    .frame(height:220)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ChakraHistory(history: history)
               
                .navigationBarTitle("Chakra History")
            }
           
            
        } //:  Navigation
        
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
