//
//  ContentView.swift
//  Login
//
//  Created by Bashayer  on 09/04/1444 AH.
//
import SwiftUI

struct ContentView: View {
     @State private var mail: String = "  Email"
    @State private var pass: String = "  Password"
   
    var body: some View {
        
       
        VStack{
            
            //color
    // -------------------------------------------------------------------------------------
            ZStack{
                LinearGradient(gradient : Gradient (colors: [Color.orange, Color.purple]), startPoint : .topTrailing, endPoint: .topLeading).cornerRadius(100)
                                   .frame(height : 400.0)
                                   
                                   .padding(.top,-200)
                                   .padding(.horizontal, -50.0)
                               Spacer()
                               
                               
                               Text("Log In")
                    .bold()
                                   .padding(.top, -25.0)
                               Text("Log in to see the world! and save the placese you visited ")
                                   .padding(.top, 30.0)
                                  .font(.caption)
                                   .padding(.leading , 25)
                              Text(" and take adavntage of other features ")
                                    .padding(.top, 60.0)
                                        .font(.caption)
                                   .padding(.leading , 25)
                 
            }
            
            
            
            
            
            
            
            
            
            
            // create fast log in
    // -------------------------------------------------------------------------------------
           
            VStack{
                
                Button {
                             
                         } label: {
                             HStack{
                                 Image("google")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width: 15,height: 15)
                                 Text("Continue with Google ")
                             }
                             
                             .frame(width: 250, height: 40)
                             .foregroundColor(Color.black)
                             .background(Color.white)
                             .overlay(
                                 RoundedRectangle(cornerRadius: 10)
                                     .stroke(Color.black, lineWidth: 1.5))
                         }
                         
                      
                         
                         Button {
                             
                         } label: {
                             HStack{
                                 Image("f")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width: 15,height: 15)
                                 Text("Continue with Facebook")
                             }
                             
                             .frame(width: 250, height: 40)
                             .foregroundColor(Color.black)
                             .background(Color.white)
                             .overlay(
                                 RoundedRectangle(cornerRadius: 10)
                                           .stroke(Color.black, lineWidth: 1.5))
                         }
                         
                         
                         Button {
                             
                         } label: {
                             HStack{
                                 Image(systemName: "apple.logo")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width: 15,height: 15)
                                 Text("Continue with apple")
                             }
                             
                             .frame(width: 250, height: 40)
                             .foregroundColor(Color.black)
                             .background(Color.white)
                             .overlay(
                                 RoundedRectangle(cornerRadius: 10)
                                     .stroke(Color.black, lineWidth: 1.5))
                         }
                         
                         
                         
                     }
                     

            .padding()
            VStack{
                
                
                
              
                Divider()
                    .padding(.leading, 220.0)
                    .padding(.top , -2)
                Divider()
                    .padding(.top , -9)
                   
                    .padding(.trailing, 220.0)
                            
                Text(" OR ")
                    .foregroundColor(Color.gray)
                    .padding(.top , -30)
                
                  //  .padding(.top , 20)
                
            }.padding()
            
            
            
            
            
            
            
            
            
            
                
                // create text filed
            VStack{
                     
                        
                        TextField("Enter your Email", text: $mail)
                            .frame(width: 290, height: 40)
                            .textFieldStyle(.roundedBorder)
                            .foregroundColor(Color.gray)
                            .background(Color.white)
                       

                        
                  
                       
                        
                        TextField("Enter your Password", text: $pass)
                            .frame(width: 290, height: 40)
                            .textFieldStyle(.roundedBorder)
                            .foregroundColor(Color.gray)
                            .background(Color.white)
                        
                    
                        
                        
                        
                    }
                    

                
                
                
                
                
                // create congirm bouttn
            VStack{
                      
                       Button("Log in ") {
                                          
                                      }
                       .frame(width: 100, height: 40)
                        .foregroundColor(Color.black)
                           .background(Color.white)
                           .overlay(
                               RoundedRectangle(cornerRadius: 10)
                                   .stroke(Color.purple, lineWidth: 1.5))
                       
                       
                   }

            
            VStack{
                      
                       Button("Forget password ") {
                                          
                                      }
                       //.frame(width: 100, height: 40)
                       
                       .foregroundColor(Color.blue)
                           .background(Color.white)
                          // .overlay(
                           //    RoundedRectangle(cornerRadius: 10)
                            //      .stroke(Color.purple, lineWidth: 1.5))
                       
                       
                   }

            
            
            
            
                
                // create last
            Spacer()
            VStack {
              
                Text(" Don't have an account???     ")
                    .padding(.top , 50)
                    .padding(.trailing , 30)
                
            }
            
            VStack{
               
                Button(" Create one. ") {
                                   
                               }
                .bold()
                .foregroundColor(Color.blue)
                    .background(Color.white)
                    .padding(.top , -32)
                    .padding(.leading, 210)
            }
            
            
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            //end of big stack
    // -------------------------------------------------------------------------------------
                
            }
            
            
            
            
            
            
            
            
            
    
        
        
     
            
            
            
            
            
            
            
            
            
            
        
            
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

