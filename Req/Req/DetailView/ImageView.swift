//
//  ContentView.swift
//  LeoSubway
//
//  Created by heojaenyeong on 2022/06/11.
//
//struct Feedback {
//    let id : UUID
//    let name : String
//    let date : Date
//    let image : String
//    let pins : [Pin]
//}
//
//struct Pin : Hashable {
//    let id : UUID
//    let x : Double
//    let y : Double
//    let title : String
//    let discription : String
import SwiftUI
struct ImageView: View {
    
    let getFeedback : Feedback//피드백 데이터
    @State var selectedPin : Pin? = nil// 선택된 핀을 담을 변수(옵셔널)
    var body : some View {
        ZStack{
            VStack(alignment:.center, spacing:0){
                Image(getFeedback.image)
                    .resizable()
                    .frame(width: 390, height: 520)
                    .onTapGesture { //이미지를 선택하면
                        selectedPin = nil//선택된 핀을 nil로 만듬
                    }
                //하단(상세페이지 와 상세_페이지)에 어떤 페이지 가 담길지 결정하는 부분
                if selectedPin == nil {//만약 선택된 핀이 nil이라면(아무핀을 선택하지않았거나, 선택된 핀을 다시 선택했거나, 이미지를 선택했다면
                    DetailViewDescription(feedbackDate: getFeedback.date, feedbackUserName: getFeedback.name)
                }   else    {
                    DetailViewFeedback(pinTitle: selectedPin!.title, pinDescription: selectedPin!.description)
                }
                    
            }//vstack
            if !getFeedback.pins.isEmpty {//pins가 빈데이터가 아니라면(그럴리는 없겠지만)
                ForEach(getFeedback.pins, id: \.id) { pin in //받아온 피드백데이터의 pins배열 에서 pin을 추출한다음
                    PinImage(pinX: pin.x, pinY: pin.y, selected: pin==selectedPin)//해당 핀이 선택되었는지 넣어주고
                        .onTapGesture {//핀을 터치할때
                            if pin == selectedPin {//이미 선택된 핀이라면
                                selectedPin = nil//선택된 핀을 해제하고
                            } else {//선택하지 않은 핀이라면
                                selectedPin = pin//해당 핀을 선택한다
                            }
                        }//onTapGesture
                }//ForEach
            }//if !getFeedback
        }//ZStack
    }//DetailView
    struct DetailView_Previews : PreviewProvider {
        static var previews : some View {
            ImageView(getFeedback: testData)
        }
    }
    
}

