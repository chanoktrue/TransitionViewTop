//
//  ContentView.swift
//  TransitionViewTop
//
//  Created by Thongchai Subsaidee on 15/7/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresent: Bool = false
    
    var body: some View {
        
        ZStack {
            VStack {
                Text("Title")
                
                Spacer()

                if isPresent {
                    Color.red
                        .frame(width: 100, height: 100)
                        .transition(.move(edge: .top))
                        .animation(.default)
                        
                }
                
                Spacer()
                
                Button("Move") {
                        isPresent.toggle()
                }
                
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
