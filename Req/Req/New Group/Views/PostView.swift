//
//  PostView.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI
//var dateFormat: DateFormatter{
//let formatter = DateFormatter()
//formatter.dateFormat = "yyyy년-MM월"
//}
//var current_date_string = formatter.string(from: Date())

//let DateKorea = DateFormatter()
//DateKorea.dateFormat = "yyyy년 MM월"
//let date = DateKorea.date(from: String)

struct PostView: View {
    //날짜 모델
    let releaseDate = Date()
    
    static let kDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy년 M월"
        return formatter
    }()
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.black)
                .frame(width: 358, height: 1)
            Text("\(releaseDate, formatter: Self.kDateFormat)")                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 200))
                .foregroundColor(.black)
            
            PostGridView(data: PostData)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
