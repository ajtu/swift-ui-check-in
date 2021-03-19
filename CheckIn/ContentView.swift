//
//  ContentView.swift
//  CheckIn
//
//  Created by Alvin Tu on 3/11/21.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var  pin: String = "" {
        didSet {
            if pin.count > 3 {
                pin = ""
            }
        }
    }
}

struct ContentView: View {
    @ObservedObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        TextField("Enter your PIN", text: $contentViewModel.pin)
            .frame(width:300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            .foregroundColor(.blue)
            .minimumScaleFactor(0.5)

            
        VStack(spacing:10) {
            HStack{
                CircleButton(title: "1") {
                    contentViewModel.pin.append("1")
                }
                CircleButton(title: "2") {
                    contentViewModel.pin.append("2")
                }
                CircleButton(title: "3") {
                    contentViewModel.pin.append("3")
                }
           
            }
            HStack{
                CircleButton(title: "4") {
                    contentViewModel.pin.append("4")
                }
                CircleButton(title: "5") {
                    contentViewModel.pin.append("5")
                }
                CircleButton(title: "6") {
                    contentViewModel.pin.append("6")
                }
           
            }
            HStack{
                CircleButton(title: "7") {
                    contentViewModel.pin.append("7")
                }
                CircleButton(title: "8") {
                    contentViewModel.pin.append("8")
                }
                CircleButton(title: "9") {
                    contentViewModel.pin.append("9")
                }
           
            }
            
            HStack{
                CircleButton(title: "0") {
                    contentViewModel.pin.append("0")
                }
           
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contentViewModel: ContentViewModel())
    }
}

struct CircleButton: View {
    var title:String
    var action = {}

    var body: some View {
        Button(action: {
            
                self.action()

            
        }, label: {
            Text(title)
                .frame(width: 100, height: 100)
                .overlay(
                    Circle()
                        .stroke(Color.blue, lineWidth: 2)
                )
        })
    }
    

}
