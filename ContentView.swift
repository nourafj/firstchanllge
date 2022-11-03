//
//  ContentView.swift
//  contact us
//
//  Created by haifa on 02/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack{
                LinearGradient(gradient: Gradient(colors: [Color.orange, Color.purple]), startPoint: .topTrailing, endPoint: .topLeading)
                    .frame(height: 250.0)
                    .cornerRadius(25)
                    .padding(.top, -450.0)
                ZStack{
                    
                    
                }//vstack
                .padding(.top, -280.0)
                
            }
            Text("contact us")
                .font(.title)
                .padding(.vertical, -270.0)
            HStack {
                Image(systemName:"phone.circle")
            
                Text("920056412")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .lineLimit(6)
            }.padding(.top, -200.0)
                    .padding(.leading, -160.0)
                HStack{
                    Image(systemName:"envelope.circle")

                    
                Text("CusSetaah@mt.gov.sa")

                .foregroundColor(.black)
                .font(.title)
                }.padding(.vertical, -100.0)
                    .padding([.top, .leading], -50.0)
                    .accentColor(.black)
            }
        }
    }


