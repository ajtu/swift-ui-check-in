//
//  ContentView.swift
//  CheckIn
//
//  Created by Alvin Tu on 3/11/21.
//

import SwiftUI

struct ContentView: View {
    @State var pin: String = ""
    
    var body: some View {
        TextField("Enter your PIN", text: $pin)
            .frame(width:300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            .foregroundColor(.blue)
            .minimumScaleFactor(0.5)

            
        VStack(spacing:10) {
            HStack{
                CircleButton(title: "1") {
                    self.pin.append("1")
                }
                CircleButton(title: "2") {
                    self.pin.append("2")
                }
                CircleButton(title: "3") {
                    self.pin.append("3")
                }
           
            }
            HStack{
                CircleButton(title: "4") {
                    self.pin.append("4")
                }
                CircleButton(title: "5") {
                    self.pin.append("5")
                }
                CircleButton(title: "6") {
                    self.pin.append("6")
                }
           
            }
            HStack{
                CircleButton(title: "7") {
                    self.pin.append("7")
                }
                CircleButton(title: "8") {
                    self.pin.append("8")
                }
                CircleButton(title: "9") {
                    self.pin.append("9")
                }
           
            }
            
            HStack{
                CircleButton(title: "0") {
                    self.pin.append("0")
                }
           
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pin:"")
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
