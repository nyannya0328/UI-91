//
//  ContentView.swift
//  UI-91
//
//  Created by にゃんにゃん丸 on 2020/12/30.
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
    @State var mulitcolor = false
    
    var body: some View{
        
        VStack{
            
            TextShimer(txt: "ABCD", mulitcolor: $mulitcolor)
            
            TextShimer2(txt: "EFG", mulitcolor: $mulitcolor)
            
            TextShimer3(txt: "HIJK", mulitcolor: $mulitcolor)
            
           
            
            Toggle(isOn: $mulitcolor) {
                
                Text("On")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
            }
            .padding()
            
        }
        .preferredColorScheme(.dark)
        
        
       
    }
}

struct TextShimer : View {
    
    var txt : String
    @Binding var mulitcolor : Bool
    
    @State var animation = false
    var body: some View{
        
        ZStack{
            Text(txt)
                .font(.system(size: 70, weight: .heavy))
                .foregroundColor(Color.blue)
              
            
            
            HStack(spacing:0){
                
                ForEach(0..<txt.count,id:\.self){index in
                    
                    Text(String(txt[txt.index(txt.startIndex,offsetBy: index)]))
                        .font(.system(size: 70, weight: .heavy))
                        .foregroundColor(mulitcolor ? randomcolor() : Color.white)
                    
                    
                    
                }
                
            }
            .mask(
            
            Rectangle()
                
                .fill(
                    LinearGradient(gradient: .init(colors: [.red,.blue]), startPoint: .top, endPoint: .bottom)
                )
                
                .rotationEffect(.init(radians: 70))
                .padding(20)
                .offset(x: -250)
                .offset(x: animation ? 500 : 0)
            
            )
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1 ){
                    
                    withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)){
                        
                        animation.toggle()
                        
                        
                        
                        
                        
                    }
                }
                
                
            }
        }
        
    
        
    }
    
    func randomcolor() -> Color{
        
        let color = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: 1, alpha: 1)
        
        return Color(color)
        
        
    }
}

struct TextShimer2 : View {
    
    var txt : String
    @Binding var mulitcolor : Bool
    
    @State var animation = false
    var body: some View{
        
        ZStack{
            Text(txt)
                .font(.system(size: 70, weight: .heavy))
                .foregroundColor(Color.blue)
              
            
            
            HStack(spacing:0){
                
                ForEach(0..<txt.count,id:\.self){index in
                    
                    Text(String(txt[txt.index(txt.startIndex,offsetBy: index)]))
                        .font(.system(size: 70, weight: .heavy))
                        .foregroundColor(mulitcolor ? randomcolor() : Color.white)
                    
                    
                    
                }
                
            }
            .mask(
            
            Rectangle()
                
                .fill(
                    LinearGradient(gradient: .init(colors: [.red,.blue]), startPoint: .top, endPoint: .bottom)
                )
                
                .rotationEffect(.init(radians: 70))
                .padding(20)
                .offset(x: -250)
                .offset(x: animation ? 500 : 0)
            
            )
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 4 ){
                    
                    withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)){
                        
                        animation.toggle()
                        
                        
                        
                        
                        
                    }
                }
                
                
            }
        }
        
    
        
    }
    
    func randomcolor() -> Color{
        
        let color = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: 1, alpha: 1)
        
        return Color(color)
        
        
    }
}

struct TextShimer3 : View {
    
    var txt : String
    @Binding var mulitcolor : Bool
    
    @State var animation = false
    var body: some View{
        
        ZStack{
            Text(txt)
                .font(.system(size: 70, weight: .heavy))
                .foregroundColor(Color.blue)
              
            
            
            HStack(spacing:0){
                
                ForEach(0..<txt.count,id:\.self){index in
                    
                    Text(String(txt[txt.index(txt.startIndex,offsetBy: index)]))
                        .font(.system(size: 70, weight: .heavy))
                        .foregroundColor(mulitcolor ? randomcolor() : Color.white)
                    
                    
                    
                }
                
            }
            .mask(
            
            Rectangle()
                
                .fill(
                    LinearGradient(gradient: .init(colors: [.red,.blue]), startPoint: .top, endPoint: .bottom)
                )
                
                .rotationEffect(.init(radians: 70))
                .padding(20)
                .offset(x: -250)
                .offset(x: animation ? 500 : 0)
            
            )
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 8 ){
                    
                    withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)){
                        
                        animation.toggle()
                        
                        
                        
                        
                        
                    }
                }
                
                
            }
        }
        
    
        
    }
    
    func randomcolor() -> Color{
        
        let color = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: 1, alpha: 1)
        
        return Color(color)
        
        
    }
}


