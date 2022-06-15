//
//  PostGridView.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct PostGridView: View {
    // MARK:- PROPERTIES
    
    let gridLayout:[GridItem] =  Array(repeating: .init(.fixed(160), spacing: 10), count: 2)
    
    let data: [PostModel]
    
    // MARK:- BODY
    
    var body: some View {
        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 0){
            
            ForEach(data) { item in
                ZStack(alignment: .center){
                    Image(item.image)
                        .resizable()
                    //  .scaledToFill()
                        .frame(width: 160, height: 213.3)
                        .clipped()
                       
                    Text("Feedback from \n \(item.name)")
                        .padding(.init(top: 170, leading: 5, bottom: 10, trailing: 10))
                        .foregroundColor(.white)
                }
            }//: LOOP
        }//: GRID
        
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(data: PostData)
    }
}
