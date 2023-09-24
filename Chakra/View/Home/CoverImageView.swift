//
//  CoverImageView.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-14.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: - PROPERTIES

    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                     .resizable()
                     .scaledToFill()
            }
         
        }
        .tabViewStyle(PageTabViewStyle())
    
    }
}
//MARK: - PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 130))
    }
}
