//
//  Header.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct Header: View {
    @State var show = false
    @State var txt = ""
    
    @State var searchText = ""
    @State var isSearching = false
    @State var showResults = false
    @State var loadSearch = false
    
    var body: some View {
        HStack(alignment: .center) {
            Text("Req!")
                .foregroundColor(.purple)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.title)
                .padding(.init(top: 0, leading: 32, bottom: 18, trailing: 0))
            Spacer()
            //서치바
            HStack{
                if self.show{
                    SearchBar(searchText: $searchText, isSearching: $isSearching, showResults: $showResults, loadSearch: $loadSearch)
                        .padding(.top, 8)
                        .padding(.bottom, 2)
                }
                else{
                    
                    Button(action: {
                        
                        withAnimation {
                            
                            self.show.toggle()
                        }
                    }) {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                            .padding(.init(top: 10, leading: 0, bottom: 18, trailing: 10))
                    }
                }
            }
            .padding(self.show ? 10 : 0)
            
            //카메라
            Button(action: {
                
            }) {
            Image(systemName: "camera")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(.white)
            }.padding(.init(top: 10, leading: 10, bottom: 18, trailing: 32))
        }
        .background(Color.black)
        .opacity(0.9)
        .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}




struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
