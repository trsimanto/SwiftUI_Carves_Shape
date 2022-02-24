//
//  ContentView.swift
//  Shared
//
//  Created by Towhid on 2/24/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    @State var color = 0
    var body : some View {
        VStack {
            ZStack(alignment: .top){
                VStack{
                    Image(self.color == 0 ? "lamp1" : "lamp2")
                        .resizable()
                        .frame( height: 300)
                    HStack(spacing: 20){
                        Button(action: {
                            self.color = 0
                        }){
                            VStack(spacing: 8 ){
                                ZStack{
                                    Circle().fill(Color.yellow)
                                        .frame(width: 20, height: 20)
                                    Circle()
                                        .stroke(self.color == 0 ? Color.white : Color.clear ,lineWidth: 2).frame(width: 30, height: 30)
                                }
                                Text("Yellow")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                
                            }
                        }
                        
                        Button(action: {
                            self.color = 1
                        }){
                            VStack(spacing: 8 ){
                                ZStack{
                                    Circle().fill(Color.orange)
                                        .frame(width: 20, height: 20)
                                    Circle()
                                        .stroke(self.color == 1 ? Color.white : Color.clear ,lineWidth: 2).frame(width: 30, height: 30)
                                }
                                Text("Orange")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                
                            }
                        }
                        
                        
                    }
                    .padding(.top, 15)
                    .padding(.bottom , 10)
                }
                HStack{
                    Button(action: {
                        
                    }){
                        Image("back")
                            .renderingMode(.original)
                            .padding()
                    }.padding(.leading,10)
                        .padding(.top , 20)
                    Spacer()
                    Button(action: {
                        
                    }){
                        Image("cart")
                            .renderingMode(.original)
                            .padding()
                        
                    }.padding(.horizontal , 10)
                        .padding(.vertical , 20)
                        .background(Color.white)
                        .clipShape(CustomShape(corner: .bottomLeft, radii: 35))
                }
            }.background(self.color == 0 ? Color.yellow : Color.orange )
                .clipShape(CustomShape(corner: .bottomLeft, radii: 55))
            
            HStack{
                Text("Melodi Lamp")
                Spacer()
                Button(action:{
                    
                }){
                    Image("heart")
                        .renderingMode(.original)
                        .padding()
                }.background(self.color == 0 ? Color.yellow : Color.orange )
                    .clipShape(Circle())
            }
            .padding(.horizontal , 35)
            .padding(.top)
            
            Text("The lampshape providesa derectional lighting above the dining table and pleasant diffused light throught the room")
                .multilineTextAlignment(.leading)
                .foregroundColor(.gray)
                .padding(.horizontal, 30)
                .padding(.top,20)
            
            HStack(spacing: 15){
                Button(action: {
                    
                }){
                    VStack{
                        
                        Image("mat1")
                                                .renderingMode(.original)
                        Text("22 W")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }.padding()
                }.background(Color.black.opacity(0.06))
                    .cornerRadius(12)
                Button(action: {
                    
                }){
                    VStack{
                        
                        Image("mat2")
                                                .renderingMode(.original)
                        Text("24 CM")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }.padding()
                }.background(Color.black.opacity(0.06))
                    .cornerRadius(12)
                Button(action: {
                    
                }){
                    VStack{
                        
                        Image("mat3")
                                                .renderingMode(.original)
                        Text("26 CM")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }.padding()
                }.background(Color.black.opacity(0.06))
                    .cornerRadius(12)
                Button(action: {
                    
                }){
                    VStack{
                        
                        Image("mat4")
                                                .renderingMode(.original)
                        Text("1.6 M")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }.padding()
                }.background(Color.black.opacity(0.06))
                    .cornerRadius(12)
                
            }.padding(.top , 20)
            
            Spacer(minLength: 0)
            
            HStack{
                Text("$12.99")
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, 35)
                    .padding(.bottom, 25)
                Spacer()
                Button(action:{
                    
                }){
                    Text("Add to Cart")
                        .foregroundColor(.black)
                        .padding(.vertical, 22)
                        .padding(.horizontal, 35)
                }.background(self.color == 0 ? Color.yellow : Color.orange)
                    .clipShape(CustomShape(corner: .topLeft, radii: 55))
                
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
        .animation(.default)
    }
}

struct CustomShape : Shape {
    var corner : UIRectCorner
    var radii : CGFloat
    
    func path (in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}

class Host : UIHostingController <ContentView> {
    
    override var prefersHomeIndicatorAutoHidden: Bool{
        
        return true
    }
}
