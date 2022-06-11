//
//  FeedbackImage.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

struct FeedbackImage: View {
    let image: Image = Image("TestImage")
    
    var body: some View {
        ZStack {
            image
                .resizable()
                .frame(width: 390.0, height: 520.0)
        }
        .frame(width: 390.0, height: 520.0)
    }
}

struct FeedbackImage_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackImage()
    }
}
