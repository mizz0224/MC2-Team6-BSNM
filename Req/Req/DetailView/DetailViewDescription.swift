//
//  DetailViewDescription.swift
//  Req
//
//  Created by heojaenyeong on 2022/06/12.
//


import SwiftUI
struct DetailViewDescription : View {
    let FeedbackDateFont : Font = Font.custom("AppleSDGothicNeo-Regular", size:15)
    let FeedbackUserNameFont : Font = Font.custom("AppleSDGothicNeo-Bold", size:24)
    let FeedbackFromFont : Font = Font.custom("AppleSDGothicNeo-Light", size:15)
    let DateColor : Color = Color(red: 171/255, green: 171/255, blue: 171/255)
    let FeedbackFrom : String = "Feedback From"
    let lineColor : Color = Color(red: 215/255, green: 218/255, blue: 220/255)
    let lineWidth : CGFloat = 358
    let lineHeigh : CGFloat = 1
    
    let feedbackDate : Date
    var feedbackDateString : String {
        let dateFormatter : DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY년 M월 d일 HH시 m분"
        return dateFormatter.string(from: feedbackDate)
    }
    let feedbackUserName : String
    
    var body : some View{
        VStack(alignment:.center, spacing:0){
            Spacer().frame(height:20)
            HStack {
                Text(FeedbackFrom)
                    .font(FeedbackFromFont)
                    //.padding(EdgeInsets(top: 20, leading: 0, bottom: 12, trailing: 0))
            }//FeedBack From 텍스트
            Spacer().frame(height:12)
            HStack {
                Text(feedbackUserName)
                .font(FeedbackUserNameFont)
            }.frame(height: 18)
            //피드백 유저 이름 출력
            Spacer().frame(height:64)
            Rectangle()
                .fill(lineColor)
                .frame(width: lineWidth, height: lineHeigh)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))//날자위 출력선
            Spacer().frame(height:16)
            HStack(alignment: .center) {
                Text(feedbackDateString)
                    .font(FeedbackDateFont)
                    .foregroundColor(DateColor)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 45, trailing: 0))
            }//피드백 날짜 출력
        }.frame(height:224)//vstack
    }//DetailViewDescriptionView
    struct DetailViewDescription_Previews : PreviewProvider{
        static var previews : some View{
            DetailViewDescription(feedbackDate : Date.now, feedbackUserName : "Curry")
        }
    }
}
