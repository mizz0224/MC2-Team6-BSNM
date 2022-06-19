//
//  DetailViewDescription.swift
//  Req
//
//  Created by heojaenyeong on 2022/06/12.
//


import SwiftUI
struct DetailViewDescription : View {
    let feedbackDateFont : Font = Font.custom("AppleSDGothicNeo-Regular", size:15) //피드백 날짜 폰트
    let feedbackUserNameFont : Font = Font.custom("AppleSDGothicNeo-Bold", size:24)//피드백 유저 이름 폰트
    let feedbackFromFont : Font = Font.custom("Ubuntu-Light", size:15)//Feedback from 폰트
    let dateColor : Color = Color(red: 171/255, green: 171/255, blue: 171/255)//날짜 출력 폰트
    let textColor : Color = Color(red: 13/255, green: 13/255, blue: 14/255)//상단메뉴 아이콘 색깔 : reqBlack : 0d0de
    let descriptionBgColor : Color = Color(red: 251/255, green: 251/255, blue: 255/255)//상단메뉴 배경 색깔 : reqWhite : fdfdff
    let feedbackDate : Date?//피드백 받은날짜
    var feedbackDateString : String? {//Date형식으로 받은 피드백 날짜를 ****년 *월 **시 **분으로 출력
        let dateFormatter : DateFormatter = DateFormatter()//날짜를 형식변환할 DateFormatter 선언
        dateFormatter.dateFormat = "YYYY년 M월 d일 HH시 m분"//형식 지정 설정
        return dateFormatter.string(from: feedbackDate!)//받은 피드백 날짜를 stirng형식으로 반환
    }
    let feedbackUserName : String?//피드백 해준 유저이름
    
    var body : some View{
        VStack(alignment:.center, spacing:0){
            Spacer().frame(height:20)//공백
            HStack(alignment:.center, spacing:0) {
                Text("Feedback From")
                    .font(feedbackFromFont)//FeedbackFrom 폰트
                    .foregroundColor(textColor)
            }//Hsack
            Spacer().frame(height:12)//공백
            HStack(alignment:.center, spacing:0) {
                Text(feedbackUserName!)//피드백 해준 유저 이름 출력
                .font(feedbackUserNameFont)//피드백 해준 유저 이름 폰트
                .foregroundColor(textColor)
            }//Hstack
            Spacer().frame(height:64)//공백
            DivideLine()//구분선
            Spacer().frame(height:16)//공백
            HStack(alignment: .center) {
                Text(feedbackDateString!)//String 타입이고 형식으로 변환한 피드백 날짜
                    .font(feedbackDateFont)//피드백 날짜 폰트
                    .foregroundColor(dateColor)//피드백 날짜 색깔(RGB : 171,171,171 / Hex : ababab)
            }//피드백 날짜 출력
            Spacer().frame(height:45)//공백
        }.frame(width:390,height:224).background(descriptionBgColor)//vstack
    }//DetailViewDescriptionView
    struct DetailViewDescription_Previews : PreviewProvider{
        static var previews : some View{
            DetailViewDescription(feedbackDate : Date.now, feedbackUserName : "커리")
        }
    }
}
