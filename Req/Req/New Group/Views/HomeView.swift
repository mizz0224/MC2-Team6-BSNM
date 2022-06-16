//
//  HomeView.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct HomeView: View {
    
    var getDataSet = testDataSet
    var body: some View {
        VStack{
            Header()
            ScrollView{
                VStack(alignment: .leading){
                    Slogan()
                        .padding(.init(top: 20, leading: 40, bottom: 16, trailing: 0))
                    PostView()
                }
            }.background(.white)
        }
        .preferredColorScheme(.dark)
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
