//
//  ContentView.swift
//  LeoSubway
//
//  Created by heojaenyeong on 2022/06/11.
//

import SwiftUI
struct ImageView : View {
    let pins : [Pin]
    let imageName : String
    let PictureHeight : CGFloat = 520
    let PictureWidth : CGFloat = 390
    var body : some View {
        ZStack{
            VStack{
                Image(imageName)
                    .resizable()
                    .frame(width: 390, height: 520)
            }.frame(height:520)//VStack
            if !pins.isEmpty {
                ForEach(pins, id: \.id) { pin in
                    PinImage(x: pin.x, y: pin.y)
                }
            }
        }//ZStack
    }//DetailView
    struct DetailView_Previews : PreviewProvider {
        static var previews : some View {
            ImageView(pins: testpins, imageName: "picture1")
        }
    }
    
}
