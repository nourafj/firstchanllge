//
//  ContentView.swift
//  loi
//
//  Created by Bashayer  on 05/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "  Name"
    @State private var mail: String = "  Email"
    @State private var birth: String = "  MM/DD/YYYY"
    @State private var pass: String = "  Password"
    @State private var cpass: String = "  Confirm Password"
    var body: some View {
        
       
        VStack{
            
            //color
    // -------------------------------------------------------------------------------------
            ZStack{
                LinearGradient(gradient : Gradient (colors: [Color.orange, Color.purple]), startPoint : .topTrailing, endPoint: .topLeading).cornerRadius(100)
                                   .frame(height : 250.0)
                                   
                                   .padding(.top,-90)
                                   .padding(.horizontal, -50.0)
                               Spacer()
                               
                               
                               Text("Sing up")
                                   .bold()
                                   .padding(.top, -25.0)
                               Text("Get started by creating your account")
                                   .padding(.top, 30.0)
                                   .font(.caption)
                
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
                // create  all oftext filed
    // -------------------------------------------------------------------------------------
            VStack{
                        
                        TextField("Enter your name", text: $name)
                            .frame(width: 290, height: 40)
                            .textFieldStyle(.roundedBorder)
                            .foregroundColor(Color.gray)
                            .background(Color.white)
                        

                        
                        TextField("Enter your Email", text: $mail)
                            .frame(width: 290, height: 40)
                            .textFieldStyle(.roundedBorder)
                            .foregroundColor(Color.gray)
                            .background(Color.white)
                       

                        
                        TextField("Enter your Birtday", text: $birth)
                            .frame(width: 290, height: 40)
                            .textFieldStyle(.roundedBorder)
                            .foregroundColor(Color.gray)
                            .background(Color.white)
                       
                        
                        TextField("Enter your Password", text: $pass)
                            .frame(width: 290, height: 40)
                            .textFieldStyle(.roundedBorder)
                            .foregroundColor(Color.gray)
                            .background(Color.white)
                        
                        TextField("Confirm your Password", text: $cpass)
                            .frame(width: 290, height: 40)
                            .textFieldStyle(.roundedBorder)
                            .foregroundColor(Color.gray)
                            .background(Color.white)
                        
                        
                        
                    }
                // create congirm bouttn confirm
 // -------------------------------------------------------------------------------------
            VStack{
                      
                       Button("Confirm ") {
                                          
                                      }
                       .frame(width: 100, height: 40)
                        .foregroundColor(Color.black)
                           .background(Color.white)
                           .overlay(
                               RoundedRectangle(cornerRadius: 10)
                                   .stroke(Color.purple, lineWidth: 1.5))
                       
                       
                   }
                // create last text and boutton
    // -------------------------------------------------------------------------------------
            
            VStack {
              
                Text(" Already have an account?     ")
                    .padding(.top , 50)
                    .padding(.trailing , 30)
                
            }
            
            VStack{
               
                Button("Sing in ") {
                                   
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
