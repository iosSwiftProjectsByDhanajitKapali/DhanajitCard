//
//  ContentView.swift
//  DhanajitCard
//
//  Created by unthinkable-mac-0025 on 01/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("dhanajit_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160, height: 160)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Dhanajit Kapali")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("ios developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                infoView(text: "+91 9555 22 6515", img: "phone.fill")
                infoView(text: "dhanajitkapali@gmail.com", img: "envelope.fill")
                    
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct infoView: View {
    let text : String
    let img : String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(height: 50, alignment: .center)
            HStack{
                Image(systemName: img)
                    .foregroundColor(.green)
                Text(text)
            }
        }
    }
}
