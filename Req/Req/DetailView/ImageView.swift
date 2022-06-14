//
//  ContentView.swift
//  LeoSubway
//
//  Created by heojaenyeong on 2022/06/11.
//

import SwiftUI
struct pinImageDate{
        let id : UUID
        let x : Double
        let y : Double
        let title : String
        let description : String
}
struct ImageView : View {
    //@Binding var changeFeedbackBottomView: FeedbackType
    //@Binding var pins: [Pin]
    //@Binding var idCount: Int
    
    let pins : [Pin]
    let imageName : String
    let PictureHeight : CGFloat = 520
    let PictureWidth : CGFloat = 390
    @State var selectedArr : [Bool] = []
    @State var selectedIndex : Int = 0
    var body : some View {
        ZStack{
            VStack{
                Image(imageName)
                    .resizable()
                    .frame(width: 390, height: 520)
                    .onTapGesture {
                        //aselected = true
                    } // image
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

