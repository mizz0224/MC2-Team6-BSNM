//
//  ContentView.swift
//
//
//  Created by heojaenyeong on 2022/06/12.
//

import SwiftUI

struct TopMenuView : View {
    @State private var showingAlert = false
    let MenuFont : Font = Font.system(size:20).bold()
    let idToDelete : UUID
    
    var body : some View {
        
        VStack(alignment: .center, spacing: 0){
            HStack(spacing:0) {
                Button(action:{gotoHome()}) {
                    Image(systemName : "chevron.backward")
                        .font(MenuFont)
                        .frame(height: 24)
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(top :10, leading : 16, bottom :18, trailing : 0))
                }
                Spacer()
                Button(action:{self.showingAlert.toggle()}) {
                    Image(systemName : "trash.fill")
                        .font(MenuFont)
                        .frame(height: 24)
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(top : 10, leading : 0, bottom : 18, trailing : 16))
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text("확인"), message: Text("정말 삭제하시겠습니까?"), primaryButton: .destructive(Text("예"), action: {
                                deleteFeedback(targetUUID: idToDelete)
                            }), secondaryButton: .cancel(Text("아니오")))
                        }
                    
                    
                }
            }
        }.frame(height: 52)
    }//TopMenuView
    
    
    func gotoHome()->Void {
        //go to home
        print("go to home")
    }
    func deleteFeedback(targetUUID : UUID)->Void {
        //delete feedback
        //go to homeview
        print("delete feedback")
        print("go to home")
    }
    struct TopMenuView_Previews : PreviewProvider {
        static var previews : some View {
            TopMenuView(idToDelete: UUID())
        }
    }
    
}


