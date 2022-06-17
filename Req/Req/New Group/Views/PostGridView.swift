//
//  PostGridView.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct PostGridView: View {

    @State var searchText = ""
    let gridLayout:[GridItem] =  Array(repeating: .init(.fixed(160), spacing: 2), count: 2)
//    let data: [PostModel]
    let data: [Feedback]
    
    var body: some View {
        //그리드
        LazyVGrid(columns: gridLayout, alignment: .center, spacing:.zero){
//            data, id: \.id
            
            ForEach(data, id: \.id)  { item in
                ZStack(alignment: .center){
                    
                    Button(action: {}){


                        Image(item.image)
                        .resizable()
                        .frame(width: 160, height: 213.3)
                        .clipped()
                    }
                    LinearGradient(colors: [.black.opacity(0.5), .black.opacity(0)], startPoint: .bottom, endPoint: .top)
                        .frame(width: 160, height: 213.3)

                    Text("Feedback from \n \(item.name)")
                        .padding(.init(top: 170, leading: 0, bottom: 10, trailing: 10))
                        .foregroundColor(.gray)

                }
                
            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(data: testDataSet)
    }
}
