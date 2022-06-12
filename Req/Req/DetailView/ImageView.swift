//
//  ContentView.swift
//  LeoSubway
//
//  Created by heojaenyeong on 2022/06/11.
//

import SwiftUI
struct ImageView : View {
    var imageName : String
    let PictureHeight : CGFloat = 520
    let PictureWidth : CGFloat = 390
    var body : some View {
        Image(imageName).resizable()
            .frame(width : PictureWidth, height : PictureHeight)
    }//DetailView
    struct DetailView_Previews : PreviewProvider {
        static var previews : some View {
            ImageView(imageName : "picture1")
        }
    }
    
}
