//
//  PostView.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.black)
                .frame(width: 358, height: 5)
            
            PostGridView(data: PostData)
        }

    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
