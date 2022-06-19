//
//  DetailViewFeedback.swift
//  Req
//
//  Created by heojaenyeong on 2022/06/13.
//
import SwiftUI
struct DetailViewFeedback : View {
    
    let pinTitleFont : Font = Font.custom("AppleSDGothicNeo-Bold", size:24)//핀의 피드백 제목 폰트
    let pinDescriptionFont : Font = Font.custom("AppleSDGothicNeo-Regular", size:15)//핀의 피드백 내용 폰트
    let pinTitle : String?//핀의 피드백 제목
    let pinDescription : String?//핀의 피드백 내용
    let textColor : Color = Color(red: 13/255, green: 13/255, blue: 14/255)//상단메뉴 아이콘 색깔 : reqBlack : 0d0de
    let feedbackBgColor : Color = Color(red: 251/255, green: 251/255, blue: 255/255)//상단메뉴 배경 색깔 : reqWhite : fdfdff
    var body : some View{
        VStack(alignment: .leading, spacing: 0){
            Spacer().frame(height:24)
            HStack {
                Spacer().frame(width: 16)
                Text(pinTitle!)//핀의 피드백 제목
                .font(pinTitleFont)//핀의 피드백 제목 폰트
                .foregroundColor(textColor)
                Spacer().frame(width: 16)
            }//pinTitle 텍스트
            Spacer().frame(height:20)
            DivideLine()
            Spacer().frame(height:20)
            HStack {
                Spacer().frame(width: 16)
                Text(pinDescription!)//핀의 피드백 내용
                .font(pinDescriptionFont)//핀의 피드백 내용 폰트
                .lineLimit(4)//최대 줄수,4줄로 임의로 설정
                .lineSpacing(4)//줄간격
                .foregroundColor(textColor)
                .fixedSize(horizontal: false, vertical: true)//5줄 넘어가기전까진 생략없이
                //.padding(EdgeInsets(top: 20, leading: 16, bottom: 0, trailing: 16))
                Spacer().frame(width: 16)
            }//pinDescrption 텍스트
            Spacer()
        }.frame(width:390,height:224).background(feedbackBgColor)//vstack
    }
    struct DetailViewFeedback_Previews : PreviewProvider{
        static var previews : some View{
            DetailViewFeedback(pinTitle: "티셔츠 로고플레이", pinDescription: "로고플레이가 맘에  안듬.\n 로고플레이가 들어간 티셔33츠티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬보다 무늬가 없는 티셔츠가 현재 옷에 더 잘 어울릴것 같음.")
        }
    }
}

