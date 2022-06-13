//
//  DetailViewFeedback.swift
//  Req
//
//  Created by heojaenyeong on 2022/06/13.
//
import SwiftUI
struct DetailViewFeedback : View {
    
    let pinTitleFont : Font = Font.custom("AppleSDGothicNeo-Bold", size:24)
    let pinDescriptionFont : Font = Font.custom("AppleSDGothicNeo-Regular", size:15)
    let lineColor : Color = Color(red: 215/255, green: 218/255, blue: 220/255)
    let lineWidth : CGFloat = 358
    let lineHeigh : CGFloat = 1
    
    let pinTitle : String
    let pinDescription : String
    
    var body : some View{
        VStack(alignment: .leading, spacing: 0){
            HStack {
                Text(pinTitle)
                .font(pinTitleFont)
                .padding(EdgeInsets(top: 24, leading: 16, bottom: 20, trailing: 16))
            }//pinTitle 텍스트
            
            Rectangle()
                .fill(lineColor)//제목,설명 구분선
                .frame(width: lineWidth, height: lineHeigh)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            
            HStack {
                Text(pinDescription)
                .font(pinDescriptionFont)
                .lineLimit(5)//5줄 임의로 설정
                .fixedSize(horizontal: false, vertical: true)//5줄 넘어가기전까진 생략없이
                .padding(EdgeInsets(top: 20, leading: 16, bottom: 0, trailing: 16))
            }//pinDescrption 텍스트
            Spacer()
        }.frame(height:224)//vstack
    }
    struct DetailViewFeedback_Previews : PreviewProvider{
        static var previews : some View{
            DetailViewFeedback(pinTitle: "티셔츠 로고플레이", pinDescription: "로고플레이가 맘에  안듬.\n 로고플레이가 들어간 티셔33츠티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬보다 무늬가 없는 티셔츠가 현재 옷에 더 잘 어울릴것 같음.")
        }
    }
}

