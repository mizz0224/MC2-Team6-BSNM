//
//  PostGridView.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct PostGridView: View {

    
    let gridLayout:[GridItem] =  Array(repeating: .init(.fixed(160), spacing: 10), count: 2)
    let data: [PostModel]
    
    
    var body: some View {
        //그리드
        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 0){
            
            ForEach(data) { item in
                ZStack(alignment: .center){
                    Button(action: {}){
                    Image(item.image)
                        .resizable()
                        .frame(width: 160, height: 213.3)
                        .clipped()
                    }

                    Text("Feedback from \n \(item.name)")
                        .padding(.init(top: 170, leading: 0, bottom: 10, trailing: 10))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(data: PostData)
    }
}
