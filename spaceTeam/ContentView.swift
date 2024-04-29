//
//  ContentView.swift
//  spaceTeam
//  Account Email: ll0128774@otc.edu
//  Account ID: 06af316e-da75-48cc-bfbd-3042585c3e7c
//  Created by HARMON, AUDREY on 4/24/24.
//

import SwiftUI

struct ContentView: View {
    //@State private var issPosition: [ISS_Position]
    var body: some View {
        NavigationStack{
            
              VStack{
                    NavigationLink{
                            ISSMap()
                        }label:{
                            Text("ISS Location")
                        }
                  NavigationLink{
                      Astronauts()
                  }label:{
                      Text("Astronauts")
                  }
                  }
                    }
                
                
                .padding(3)
            
            
            //                    Button("ISS Location", systemImage: "globe")
//                        .cornerRadius(5)
//                        .buttonStyle(.bordered)
//                        .padding(3)
                    
//                    Button("Astronauts", systemImage: "rocket", action: showAstronauts)
//                        .cornerRadius(5)
//                        .buttonStyle(.bordered)
//                        .padding(3)
                    //Text("Hello, world!")
                    //            button.backgroundColor = .clear
                    //            button.layer.cornerRadius = 5
                    //            button.layer.borderWidth = 1
                    //            button.layer.borderColor = UIColor.black.cgColor
                }           
            
        
    
}
struct ISSView: View{
    var body: some View {
        Text("View ISS Location")
    }
}



func showAstronauts(){
    //Astronauts()
}
    
    


#Preview {
    ContentView()
}
