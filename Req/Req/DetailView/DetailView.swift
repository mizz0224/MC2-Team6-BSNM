//ToDO : 데이터 전달, 홈뷰로이동, 피드백 삭제, 핀그리기, 핀선택시 보이는뷰(상세_피드백)구현하기 
//Do : 상세페이지 뷰만 구현, 뷰 분리(그림, 하단 설명 페이지 분리)
import SwiftUI
struct Pin{
    var id : UUID
    var x : Int
    var y : Int
    var title : String
    var description : String
}
struct Feedback{
    var id : UUID
    var name : String
    var date : Date
    var image : String
    var pins : [Pin]
}
struct DetailView: View {
    @State private var showingAlert = false
    
    let MenuFont : Font = Font.system(size:20)
    
    //var feedBackData : Feedback
    let imageName : String
    let feedbackDate : Date
    let feedbackUserName : String
    let id : UUID
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment:.center,spacing:0) {
                    ImageView(imageName: "picture1")
                    //ImageView(개별 뷰로 구현)
                        .toolbar {//navigation var의 툴바 버튼
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action:{gotoHome()}) {
                                Image(systemName: "chevron.backward").font(MenuFont)
                                    .padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 0)).foregroundColor(Color.black)
                            }
                        }//좌측 상단 뒤로가기 버튼
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action:{self.showingAlert.toggle()}) {
                                Image(systemName: "trash.fill").font(MenuFont)
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 17.5)).foregroundColor(Color.black)
                                    .alert(isPresented: $showingAlert) {
                                        Alert(title: Text("확인"), message: Text("정말 삭제하시겠습니까?"), primaryButton: .destructive(Text("예"), action: {
                                            //some Action
                                        }), secondaryButton: .cancel(Text("아니오")))
                                    }
                            }
                        }//우측 상단 피드백 삭제 버튼
                    }//ToolBar(navigationbar item 막힐예정이라 toolbar 사용)
                    
                    DetailViewDescription(feedbackDate: feedbackDate, feedbackUserName: feedbackUserName)
                }//VStack
            }//ZStack
        }//NavigationView
    }//DetailView
    
    func gotoHome()->Void {
        //go to homeview
    }
    func deleteFeedback(getUuid : UUID)->Void {
        //delete feedback
        //go to homeview
    }
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView(imageName: "picture1", feedbackDate: Date.now, feedbackUserName: "커리", id: UUID.init())
        }
    }
    
}
