//
//  ISSMap.swift
//  spaceTeam
//
//  Created by HARMON, AUDREY on 4/24/24.
//

import SwiftUI
import MapKit

struct ISSMap: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
    }
}

struct MapView: UIViewRepresentable{
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        <#code#>;let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2, <#T##CLLocationDegrees#>)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        view.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        view.addAnnotation(annotation)
    }
    
    let latitude: Double
    let longitude: Double
    
    
}

#Preview {
    ISSMap()
}
