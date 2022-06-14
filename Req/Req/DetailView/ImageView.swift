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
struct pinImageDate{
        let id : UUID
        let x : Double
        let y : Double
        let title : String
        let description : String
}
struct ImageView : View {
    //@Binding var changeFeedbackBottomView: FeedbackType
    //@Binding var pins: [Pin]
    //@Binding var idCount: Int
    
    let getFeedback : Feedback
    @State var selectedArr : [Bool] = [false,false,false,false,false]
    @State var selectedIndex : Int = 0
    @State var detailDescription : Bool = true
    var body : some View {
        ZStack{
            VStack{
                Image(getFeedback.image)
                    .resizable()
                    .frame(width: 390, height: 520)
                    .onTapGesture {
                        detailDescription = true
                        self.selectedArr[self.selectedIndex] = false
                    } // image
                if(detailDescription){
                    DetailViewDescription(feedbackDate: getFeedback.date, feedbackUserName: getFeedback.name)
                } else {
                    DetailViewFeedback(pinTitle: getFeedback.pins[selectedIndex].title, pinDescription: getFeedback.pins[selectedIndex].discription)
                }
            }.frame(height:520)//VStack
            if !getFeedback.pins.isEmpty {
                ForEach(getFeedback.pins, id: \.id) { pin in
                    PinImage(x: pin.x, y: pin.y, selected: self.$selectedArr[getFeedback.pins.firstIndex(of: pin)!])
                        .onTapGesture {
                            if(self.selectedArr[self.selectedIndex] == true) {
                                detailDescription = true
                                self.selectedArr[self.selectedIndex] = false
                            } else {
                                detailDescription = false
                                self.selectedArr[self.selectedIndex] = false
                                self.selectedIndex = getFeedback.pins.firstIndex(of: pin)!
                                self.selectedArr[getFeedback.pins.firstIndex(of: pin)!] = true
                            }
                            
                        }
                }
            }
        }//ZStack
    }//DetailView
    struct DetailView_Previews : PreviewProvider {
        static var previews : some View {
            ImageView(getFeedback: testData)
        }
    }
    
}

