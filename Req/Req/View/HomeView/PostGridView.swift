//
//  PostGridView.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct PostGridView: View {
    @EnvironmentObject var userData: UserDataManager

    @Binding var searchText: String
    var getDataSet: [Feedback] {
        userData.requestFeedbackArray()

        return userData.FeedbackArray
    }


    let gridLayout: [GridItem] = Array(repeating: .init(.fixed(160), spacing: 6), count: 2)
    let data: [Feedback]
    @Binding var isDark: Bool


    var body: some View {
        //그리드
        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 0) {

            ForEach(data.filter({ "\($0)".contains(searchText.lowercased()) || searchText.isEmpty }).reversed(), id: \.id) { item in
                ZStack(alignment: .center) {
                    NavigationLink(destination: { DetailView(getFeedback: item, isDark: $isDark)
                            .navigationBarHidden(true)
                    }) {
                        ZStack {
                            Image(uiImage: UIImage(data: item.image) ?? UIImage(systemName: "exclamationmark.icloud")!)
                                .resizable()
                                .frameRatio(width: 160, height: 213.3)
                            //                                .clipped()
                            LinearGradient(
                                colors: [Color.ReqBlack.opacity(0.5), Color.ReqBlack.opacity(0)],
                                startPoint: .bottom,
                                endPoint: .top
                            )
                                .frameRatio(width: 160, height: 213.3)
                        }
                    }
                    Text("Feedback from")
                        .font(.custom("Ubuntu-Light", size: 12))
                        .padding(.init(top: 150, leading: 0, bottom: 10, trailing: 35))
                        .padding(EdgeInsets(top: 4, leading: 7, bottom: 2, trailing: 40))

                        .foregroundColor(.Grey)
                    Text("\(item.name)")
                        .kerning(1.5)
                        .frameRatio(width: 200, alignment: .leading)
                        .lineLimit(1)
                        .padding(.init(top: 180, leading: 5, bottom: 6, trailing: 0))
                        .foregroundColor(.ReqWhite)
                        .padding(EdgeInsets(top: 10, leading: 49, bottom: 3, trailing: 0))

                }
            }
        }
            .animation(.spring())
    }
}

//struct PostGridView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostGridView(searchText: $searchText, data: testDataSet)
//    }
//}
