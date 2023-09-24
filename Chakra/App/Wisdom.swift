//
//  Wisdom.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-17.
//

import SwiftUI

struct Wisdom: View {
    var body: some View {
        let wisdom: Wisdoms = Bundle.main.decode("wisdom.json")
        VStack{
       Quotes(wisdom: wisdom)
            
        }
            
        
    }
}

struct Wisdom_Previews: PreviewProvider {
    static var previews: some View {
        Wisdom()
    }
}
