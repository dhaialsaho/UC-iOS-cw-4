//
//  ContentView.swift
//  day4
//
//  Created by Dhai AlSaho on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var addmore = ""
    @State var shoppings = [ "strawberry","raspberry","blueberry","blackberry","granola","coconut","peanut butter","chia seeds"]
    var body: some View {
        ZStack{
           
            VStack{
               
            List(shoppings, id: \.self) { shoppings in
                HStack{
                 Image(shoppings)
                        .resizable()
                        .frame(width: 50, height: 50)
                Text(shoppings)}
                }
           
                
                
                HStack{
                    
                    Button(action: {
                        shoppings.append(addmore)
                    }){
                        Image(systemName: "plus.square.fill")
                            .resizable()
                            .frame(width: 25, height:25)
                            .foregroundColor(.pink)
                    }
                    TextField("add item", text: $addmore)
                    
                    Button(action: {
                        shoppings.remove(at:0)
                    }){
                        Image(systemName: "minus.square.fill")
                            .resizable()
                            .frame(width: 25, height:25)
                            .foregroundColor(.pink)
                    }
                    Button(action: {
                        shoppings.append(shoppings.randomElement() ?? "" )
                    }){
                        Image(systemName: "questionmark.square.fill")
                            .resizable()
                            .frame(width: 25, height:25)
                            .foregroundColor(.pink)
                        
                    }
                    
                    .padding()
                    
                    
                    }
                    
               
                    
                    
                }
            }
  
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
