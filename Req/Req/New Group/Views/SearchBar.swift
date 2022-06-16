//
//  SearchBar.swift
//  Req
//
//  Created by 조성산 on 2022/06/15.
//

import SwiftUI

struct SearchBar: View {
    @State var change = false
    @State var show = false
    @State var txt = ""
    @Binding var searchText: String
    @Binding var isSearching: Bool
    @Binding var showResults: Bool
    @Binding var loadSearch: Bool

    var body: some View {
        
        
        HStack (spacing: 0){
            HStack {
                TextField("패션아이템 이름", text: $searchText)
                    .padding(.leading, 24)
            }
            .frame(height: 2)
            .padding()
            .background(Color(.systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .padding(.horizontal)
            .onTapGesture(perform: {
                isSearching = true
                showResults = true
            })
            .overlay (
                HStack {
                    Button(action: {showResults = true}){
                        Image(systemName: "magnifyingglass")
                    }
                    Spacer()
                    
                    
                    Button(action: {searchText = ""}, label: {
                        Image(systemName: "xmark.circle.fill")
                            .padding(.vertical)
                            .foregroundColor(.gray)
                            .opacity(isSearching ? 1 : 0)
                    })
                }
                    .padding(.horizontal, 32)
                    .foregroundColor(.gray)
            )
            
            Button(action: {
                self.change.toggle()
                
            },
                   label: {
                Image(systemName: "xmark")
                    .padding(.trailing)
                    .padding(.leading, 8)
            }
            )
            .transition(.move(edge: .trailing))
        }
        
    }
    
}


