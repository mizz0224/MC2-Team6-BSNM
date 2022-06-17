//
//  HomeView.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct HomeView: View {
    var getDataSet = testDataSet
    @State var searchText = ""
    @State var getisSearch = false
    @State var isSearching = false
    @State var showResults = false
    @State var loadSearch = false
    var body: some View {
        VStack{
            TopMenu()
            ScrollView{
                VStack(alignment: .leading){
                    Slogan()
                        .padding(.init(top: 20, leading: 40, bottom: 16, trailing: 0))
                    PostView()
                }
            }.background(.white)
        }
        .preferredColorScheme(.dark)
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                loadSearch = true
            }})
    }
    
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
 }
