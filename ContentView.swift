//
//  ContentView.swift
//  demo2
//
//  Created by noura on 29/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var searchText = ""
    @State var isSearching = false
    var body: some View {
        NavigationView{
            
            VStack {
         
                ZStack{
                    
                    // back button .Navigation
                    LinearGradient(gradient: Gradient(colors: [Color.orange, Color.purple]), startPoint: .topTrailing, endPoint: .topLeading)
                        .frame(height: 250.0)
                        .cornerRadius(25)
                        .padding(.top, -450.0)
                    VStack{
                        
                        TextField("search ", text: $searchText)
                            .padding(.leading,24)
                            .background(Color(.systemGray5))
                            .cornerRadius(6)
                            .padding()
                            .background(Color(.systemGray5))
                            .cornerRadius(6)
                            .padding(.horizontal)
                        
                            .overlay(HStack{
                                Image(systemName: "magnifyingglass")
                                Spacer()
                                if isSearching{
                                    Button(action:{ searchText = ""},label:{
                                        Image(systemName:"xmark.circle.fill")
                                            .padding(.vertical)
                                    } )
                                }
                                
                            }.padding(.horizontal,32)
                                .foregroundColor(.gray)
                            )  .transition(.move(edge: .trailing))
                        
                            .transition(.move(edge: .trailing))
                        
                        
                    }
                    //vstack
                    
                    .padding(.top, -300.0)
                    ///image
                    Image("alula")
                        .resizable()
                        .frame(width: 300, height: 200)
                        .padding([.top, .trailing], -130.0)
                        .padding(.top,-40)
                    //name
                    Text("AlUla")
                        .padding(.leading, -150.0)
                        .padding(.top, -150.0)
                        .foregroundColor(.gray)
                Image("star1")
                        .resizable()
                        .frame(width: 40, height: 70)
                        .padding(.trailing, 270.0)
                        .padding(.bottom, 150.0)
                    Image("ithra")
                        .resizable()
                        .frame(width: 300, height: 200)
                        .padding(.trailing, -120.0)
                        .padding(.top,240)
                    //name
                    Text("Ithra")
                        .padding(.leading, -150.0)
                        .padding(.top, 130.0)
                        .foregroundColor(.gray)
                    Image("star2")
                            .resizable()
                            .frame(width: 40, height: 70)
                            .padding(.trailing, 270.0)
                            .padding(.top, 260)
                    Image("alkhobar")
                        .resizable()
                        .frame(width: 300, height: 200)
                        .padding(.trailing, -120.0)
                        .padding(.top, 650)
                    //name
                    Text("alkhobar")
                        .padding(.leading, -170.0)
                        .padding(.top, 550)
                        .foregroundColor(.gray)

                } //end ZStack
                Text("where will your next trip?")
                    .font(.title2)
                    .padding(.top, -790.0)
                
                    .padding(.leading)
//                Image("star3")
//                    .resizable()
//                    .frame(width: 40, height: 70)
//                    .padding(.trailing, 280.0)
//                    .padding(.bottom,800)
            } //end first Vstack
            
        }
        
        // .padding(.vertical,650.0)
        // .padding(.top, -150.0)
        //    NavigationView{
        
        // }
        
        
        // }
        
        //  }
        
        //  NavigationView(){
        //   ScrollView{
        //                  HStack{
        //
        //
        //
        //
        //                  .background(Color(.systemGray5))
        //                  .cornerRadius(6)
        //                  .padding(.horizontal)
        //                  .overlay(HStack{
        //                      Image(systemName: "magnifyingglass")
        //                      Spacer()
        //                      if isSearching{
        //                          Button(action:{ searchText = ""}, label:{
        //                              Image(systemName: "xmark.circle.fill")
        //                                  .padding(.vertical)
        //
        //                          } )
        //                      }
        //
        //                  }.padding(.horizontal,32)
        //                    .foregroundColor(.gray)
        //                  )  .transition(.move(edge: .trailing))
        //
        //                  if isSearching{
        //                      Button(action: {
        //                          isSearching=false
        //                          searchText=""
        //
        //                      }, label: {
        //                          Text("Cancel")
        //                              .padding(.trailing)
        //                              .padding(.leading,0)
        //                      })
        //                      .transition(.move(edge: .trailing))
        //
        //                  }
        //              }
        //  }
        
        //  }
        //VStack{
        
        
        //LinearGradient(gradient: Gradient(colors: [Color.orange, Color.purple]), startPoint: .top, endPoint: .bottom)
        //    .cornerRadius(450)
        //        .padding(.bottom, 650.0)
        
        
        //      Text("where will your next trip?")
        //           .font(.title)
        
        
        //             .padding(.top, -800.0)
        
        
        
        //     }
        //   .padding(.all, -78.0)
        
        //  }
        
    }
}



//لاتلمسينها حقت الفيو
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
    
}
