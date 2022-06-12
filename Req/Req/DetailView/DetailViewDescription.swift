//
//  DetailViewDescription.swift
//  Req
//
//  Created by heojaenyeong on 2022/06/12.
//


import SwiftUI
struct DetailViewDescription : View {
    let FeedbackDateFont : Font = Font.custom("AppleSDGothicNeo-Regular", size:14)
    let FeedbackUserNameFont : Font = Font.custom("AppleSDGothicNeo-Bold", size:20)
    let FeedbackFromFont : Font = Font.custom("AppleSDGothicNeo-Light", size:14)
    let DateColor : Color = Color(red: 171/255, green: 171/255, blue: 171/255)
    let FeedbackFrom : String = "Feedback From"
    
    let feedbackDate : Date
    var feedbackDateString : String {
        let dateFormatter : DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY년 M월 d일 HH시 m분"
        return dateFormatter.string(from: feedbackDate)
    }
    let feedbackUserName : String
    
    var body : some View{
        HStack {
            Spacer()
            Text(FeedbackFrom).font(FeedbackFromFont)
            Spacer()
        }.padding(EdgeInsets(top: 24, leading: 0, bottom: 13, trailing: 0))//FeedBack From 텍스트

        HStack {
            Spacer()
            Text(feedbackUserName).font(FeedbackUserNameFont)
            Spacer()
        }//피드백 유저 이름 출력
        
        Rectangle().fill(DateColor).frame(width: 358, height: 1).padding(EdgeInsets(top: 60, leading: 0, bottom: 16, trailing: 0))//날자위 출력선
        
        HStack {
            Spacer()
            Text(feedbackDateString).font(FeedbackDateFont).foregroundColor(DateColor)
            Spacer()
        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))//피드백 날짜 출력
        
        Spacer()
    }
    struct DetailViewDescription_Previews : PreviewProvider{
        static var previews : some View{
            DetailViewDescription(feedbackDate : Date.now, feedbackUserName : "Curry")
        }
    }
}
