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
struct ImageView : View {
    
    let getFeedback : Feedback//피드백 데이터
    @State var selectedArr : [Bool]
    //@State private lazy var selectedArr : [Bool] = [Bool](repeating: false, count: getFeedback.pins.count)//핀들의 선택여부가 담길 Bool배열
    @State var selectedIndex : Int = 0//몇번째 핀이 선택되었는지 기록 임의로 0부여
    @State var detailDescription : Bool = true//상세페이지(피드백 유저, 피드백 날짜) 표시 여부 true일시 상세페이지 표시 false일시 상세_피드백페이지 표시
    
    var body : some View {
        ZStack{
            VStack{
                Image(getFeedback.image)
                    .resizable()
                    .frame(width: 390, height: 520)
                    .onTapGesture { //이미지를 선택하면
                        detailDescription = true//상세_피드백이아닌 상세 페이지를 그리게하고
                        self.selectedArr[self.selectedIndex] = false//상세_피드백이아닌 상세 페이지를 그리게하고
                    }
                if(detailDescription){// 만약 상세페이지를 보여주기로 결정했다면
                    DetailViewDescription(feedbackDate: getFeedback.date, feedbackUserName: getFeedback.name) //상세페이지 구현
                } else { // 상세페이지가아닌 상세_피드백을 보여주기로 결정했다면
                    DetailViewFeedback(pinTitle: getFeedback.pins[selectedIndex].title, pinDescription: getFeedback.pins[selectedIndex].discription)//상세_피드백 구현
                }
            }.frame(height:520)//vstack
            if !getFeedback.pins.isEmpty {//핀이 빈데이터가 아니라면(그럴리는 없겠지만)
                ForEach(getFeedback.pins, id: \.id) { pin in //받아온 피드백데이터의 pins배열 에서 pin을 추출한다음
                    PinImage(x: pin.x, y: pin.y, selected: self.$selectedArr[getFeedback.pins.firstIndex(of: pin)!])//핀의 x,y 좌표와 selectArr의 값을 넘겨줘서 핀 이미지를 그린다
                        .onTapGesture {//핀을 선택할때
                            if(self.selectedArr[getFeedback.pins.firstIndex(of: pin)!] == true) { //이미 선택된 핀이라면
                                detailDescription = true //상세_피드백이아닌 상세 페이지를 그리게하고
                                self.selectedArr[self.selectedIndex] = false//상세_피드백이아닌 상세 페이지를 그리게하고
                            } else {//선택 되지 않은 핀이라면
                                detailDescription = false//상세 페이지가아닌 상세_피드백 으로 그리게 함
                                self.selectedArr[self.selectedIndex] = false//기존에 선택된 핀을 선택 해제 하고
                                self.selectedIndex = getFeedback.pins.firstIndex(of: pin)!//몇 번째 핀이 선택되었는지 selectedIndex에 저장
                                self.selectedArr[getFeedback.pins.firstIndex(of: pin)!] = true//클릭한 핀을 selectedArr에서 true로 바꿔서 저장
                            }
                        }//onTapGesture
                }//ForEach
            }//if !getFeedback
        }//ZStack
    }//DetailView
    struct DetailView_Previews : PreviewProvider {
        static var previews : some View {
            ImageView(getFeedback: testData, selectedArr: [false,false,false,false,false])
        }
    }
    
}

