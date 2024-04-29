//
//  Astronauts.swift
//  spaceTeam
//
//  Created by LATHROP, LOUIS W. on 4/29/24.
//

import SwiftUI

struct AstronautList: Codable{
    var Astronaut: Astronaut
}

struct Astronaut: Codable{
    var Name: String
    var Location: String
}
struct Astronauts: View {
    var body: some View {
        VStack{
            Text("Astronaut View!")
            for Astronaut in AstronautList {
                Text(self.Name)
            }
           
        }.onAppear{getAstronauts()}
        
        
        
    }
       
}

func getAstronauts(){
    var request = URLRequest(url: URL(string: "http://api.open-notify.org/astros.json")!)
    request.httpMethod = "GET"
    //let session = URLSession.shared
    URLSession.shared.dataTask(with: request, completionHandler: { data, response, error in
        //print(response)
        guard let data = data
        else {
            print("no data recieved")
            return
        }
        do{
            let decoder = JSONDecoder()
            let result = try decoder.decode(AstronautList.self, from: data)
        }
        catch{
        print("Error decoding \(error.localizedDescription)")
        }    })
    
    }
    
    




#Preview {
    Astronauts()
}
