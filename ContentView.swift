//
//  ContentView.swift
//  demo22
//
//  Created by noura on 05/04/1444 AH.
//

import SwiftUI
import MapKit
import Foundation
import CoreLocation

struct MapWithUserLocation: View {
    
    @StateObject private var locationManager = LocationManager()
    
    var region: Binding<MKCoordinateRegion>? {
        guard let location = locationManager.location else {
            return MKCoordinateRegion.goldenGateRegion().getBinding()
        }
        
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        
        return region.getBinding()
    }
    
    var body: some View {
        if let region = region {
            Map(coordinateRegion: region, interactionModes: .all, showsUserLocation: true, userTrackingMode: .constant(.follow))
                .ignoresSafeArea()
            
        }
    }
} //end view
struct MapWithUserLocation_Previews: PreviewProvider {
    static var previews: some View {
        MapWithUserLocation()
    }
}
//end struct MapWithUserLocation_Previews: PreviewProvider {

final class LocationManager: NSObject, ObservableObject {
    @Published var location: CLLocation?
 
    private let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
    }
}
//end class
extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            guard let location = locations.last else { return }
            DispatchQueue.main.async {
                self.location = location
            }
    }
}
//extension LocationManager: CLLocationManagerDelegate {

extension MKCoordinateRegion {
    
    static func goldenGateRegion() -> MKCoordinateRegion {
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.819527098978355, longitude:  -122.47854602016669), latitudinalMeters: 5000, longitudinalMeters: 5000)
    }
    
    func getBinding() -> Binding<MKCoordinateRegion>? {
        return Binding<MKCoordinateRegion>(.constant(self))
    }
}
//extension MKCoordinateRegion



//access to the map
class myLocationVC: UIViewController ,CLLocationManagerDelegate{
    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
     func viewDidLod(){
        super.viewDidLoad()
        locationManager.delegate = self
         locationManager.desiredAccuracy = kCLLocationAccuracyBest
         if isLocationServiceEnabled(){
             checkLocationAuthorization()
         }
         else {
             showAlert(msg: "please Enable loction service")
         }
         
    }
    func isLocationServiceEnabled() -> Bool {
        return CLLocationManager.locationServicesEnabled()
    }
    func checkLocationAuthorization(){
        switch locationManager.authorizationStatus{
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            break
        case .authorizedWhenInUse:
            locationManager.startUpdatingLocation()
            mapView.showsUserLocation = true
            break
        case .authorizedAlways:
            locationManager.startUpdatingLocation()
    mapView.showsUserLocation = true
            break
        case .denied:
            showAlert(msg: "please authorize access to location ")
            break
        case .restricted:
            showAlert(msg: "authorization restricted")
            break
        default:
            print("default..")
            break
            
        }
              }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last{
            print("location: \(location.coordinate)")
        }
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
      
        case .authorizedWhenInUse:
            locationManager.startUpdatingLocation()
            mapView.showsUserLocation = true
            break
        case .authorizedAlways:
            locationManager.startUpdatingLocation()
    mapView.showsUserLocation = true
            break
        case .denied:
            showAlert(msg: "please authorize access to location ")
            break
     
        default:
            print("default..")
            break
            
        }
    }
    func showAlert(msg: String){
        let alert = UIAlertController(title : "Alert ", message : msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "close", style: .default))
        present(alert,animated: true, completion: nil)
    }
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//final class LocationManager: NSObject, ObservableObject {
//
//}
//struct ContentView: View {
//        @StateObject private var viewModel = ContentViewModel()
//
//    var body: some View{
//        Map(coordinateRegion: viewModel.$MapRegion, showsUserLocation: true)
//                    .ignoresSafeArea()
//                    .accentColor(Color(.orange))
//                    .onAppear(perform:{ viewModel.checkIfLocationServicesIsEnabled()})
//
//    } //end  var body: some View
//
//} //end struct ContentView: View
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//        Image(systemName: "delete.backward.fill")
//    }
//} //start class
//final class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
//  //  @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.6, longitude: 46.6), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//
//    @State var MapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.6, longitude: 46.6), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//    var locationManager: CLLocationManager?
//    //..............................................................................
//       func checkIfLocationServicesIsEnabled() {
//        if CLLocationManager.locationServicesEnabled() {
//            locationManager = CLLocationManager()
//            locationManager!.delegate = self
//         } else {
//                     print("Show an Alter letting them know this is off and to go turn it on.")
//        }
//    }
//
//   private func checkLocationAuthorization() {
//
//    guard let locationManager = locationManager else { return }
//        switch locationManager.authorizationStatus{
//        case .notDetermined:
//            locationManager.requestWhenInUseAuthorization()
//        case .restricted:
//            print("your location is restricted likely due to parental controls. ")
//        case .denied:
//            print("you have denied this app location permission. go into settings to change it. ")
//        case .authorizedAlways, .authorizedWhenInUse:
//            MapRegion = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//            break
//        @unknown default:
//            break
//        }
//    }
//
//    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager){
//               checkLocationAuthorization()
//           }
//

