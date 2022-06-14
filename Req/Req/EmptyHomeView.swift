//
//  EmptyHomeView.swift
//  Req
//
//  Created by Seyoung Choi on 2022/06/15.
//

import SwiftUI

struct EmptyHomeView: View {
    var body: some View {
        HStack{
            Spacer().frame(width: 32)
            VStack(alignment: .leading, spacing: 12){
                Text("Take")
                    .font(.system(size: 60, weight: .bold))
                    .overlay{
                        LinearGradient(
                            colors: [.black, .black],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        .mask(
                            Text("Take")
                                .font(.system(size: 60, weight: .bold))
                        )
                    }
                Text("A")
                    .font(.system(size: 60, weight: .bold))
                Text("Picture")
                    .font(.system(size: 60, weight: .bold))
                Text("And")
                    .font(.system(size: 60, weight: .bold))
                Text("Get")
                    .font(.system(size: 60, weight: .bold))
                Text("Feedback")
                    .font(.system(size: 60, weight: .bold))
            }
            
            Spacer()
        }
    }
}

struct EmptyHomeView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyHomeView()
    }
}
