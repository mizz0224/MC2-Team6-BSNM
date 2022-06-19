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


    let gridLayout: [GridItem] = Array(repeating: .init(.fixed(160), spacing: 10), count: 2)
    let data: [Feedback]
    @Binding var isDark : Bool


    var body: some View {
        //그리드
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 0) {

                ForEach(data.filter({ "\($0)".contains(searchText.lowercased()) || searchText.isEmpty}), id: \.id) { item in
                    ZStack(alignment: .center) {
                        NavigationLink(destination: { DetailView(getFeedback: item,isDark: $isDark)
                                .navigationBarHidden(true)
                        }) {
                            Image(uiImage: UIImage(data: item.image) ?? UIImage(systemName: "exclamationmark.icloud")!)
                                .resizable()
                                .frame(width: 160, height: 213.3)
                                .clipped()
                        }
                        Text("Feedback from \n \(item.name)")
                            .padding(.init(top: 170, leading: 0, bottom: 10, trailing: 10))
                            .foregroundColor(.white)
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
