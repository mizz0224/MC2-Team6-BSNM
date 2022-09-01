//
//  PostView.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct PostView: View {
    @EnvironmentObject var userData: UserDataManager

    //날짜 모델
    let releaseDate = Date()

    static let kDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy년 M월"
        return formatter
    }()
    @Binding var searchText: String

    @Binding var loadSearch: Bool

    @Binding var isDark: Bool//다크모드를 제어할 변수
    
    @Binding var isRanking: Bool

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.LightGrey)
                .frameRatio(width: 330, height: 1)
            if isRanking {
                HStack{
                    Text("Ranking System")
                        .paddingRatio(EdgeInsets(top: 0, leading: 32, bottom: 0, trailing: 0))
                        .foregroundColor(.gray)
                    Spacer()
                }
            } else {
                Text("\(releaseDate, formatter: Self.kDateFormat)")
                    .paddingRatio(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 245))
                    .foregroundColor(.gray)
            }

            PostGridView(searchText: $searchText, data: userData.FeedbackArray,rankingdata: userData.FeedbackArray.sorted(by: {$0.feedbackPointAvg > $1.feedbackPointAvg}), isDark: $isDark, isRanking: $isRanking)
        }
            .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                loadSearch = true
            }
        })
    }
}

//struct PostView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostView(searchText: $searchText, loadSearch: $loadSearch)
//    }
//}
