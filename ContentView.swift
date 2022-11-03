
import SwiftUI

struct ContentView: View {
    var body: some View{
    
        VStack{
            VStack{
            LinearGradient(gradient: Gradient(colors: [Color.orange, Color.purple]), startPoint: .topTrailing, endPoint: .topLeading)
                .frame(height: 250.0)
                .cornerRadius(25)
                .padding(.top, -170)
            Text("Terms of Service")
                        .font(.title)
                        .padding(.top, -80.0)
            }
             Text("Data released while using our services Location data Precise location data. For drivers, cam and audio data, and see which places were displayed when the app was running in startup and on the screen or backgroundis open but not on the screen of their mobile device,Transaction Information: We collect transaction information related to the use of our Services, including the type of services requested or providedUsage data: We collect data about how users interact with our services. This includes data such as the last place you visited, app features or pages viewed, app crashes, other system activity, browser type, and third-party sites or services used before interacting with our services. In some cases, we collect this data through cookies, pixels ")              .padding()
            
            
            
            HStack{
                ZStack{
                    NavigationLink(destination: Text("Accept"),
                    label: {
                    Text("Decline")
                   // .padding(.leading, -1.0)
                    .font(.system(size: 20))
                    .frame(width: 100, height: 40)
                    .foregroundColor(Color.black)
                    
                    .background(Color.white)
                    .overlay(
                    RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1.5))
                   // .padding(.leading, 280.0)
                    } )
                    }
                .padding(70)
                ZStack{
                    NavigationLink(destination: Text("decline"),
                    label: {
                    Text("Accept")
                           // .padding(.bottom, -20.00),padding(.trailing,  200.00)
                    //.padding(.leading, -1.0)
              
                            .font(.system(size: 20))
                    .frame(width: 100, height: 40)
                    .foregroundColor(Color.purple)
                    .background(Color.white)
                    .overlay(
                    RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1.5))
                    //.padding(.leading, 280.0)
                    } )
                

                } //.padding(.bottom, -20.00),padding(.trailing,  200.00)//
                .padding(70)
                
            }
            .padding(.all)
                }
                }
                }
//done
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            }
        }



    
  
