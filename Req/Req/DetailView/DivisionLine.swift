//
//  DivisionLine.swift
//  Req
//
//  Created by heojaenyeong on 2022/06/14.
//

import Foundation
import SwiftUI
struct DivisionLine : View{
    let lineColor : Color = Color(red: 215/255, green: 218/255, blue: 220/255)//구분선 색깔
    let lineWidth : CGFloat = 358//구분선 길이
    let lineHeigh : CGFloat = 1//구분선 두께
    
    var body: some View{
        HStack(alignment: .center, spacing: 0){
            Rectangle()
                .fill(lineColor)
                .frame(width: lineWidth, height: lineHeigh)//날찌위 출력선
        }
    }
    struct DivisionLine_Previews : PreviewProvider{
        static var previews : some View{
            DivisionLine()
        }
    }
}
