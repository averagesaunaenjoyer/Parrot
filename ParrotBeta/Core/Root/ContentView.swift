//
//  ContentView.swift
//  ParrotBeta
//
//  Created by Serafin dela Paz on 6/29/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                
                let geometryValue = geometry.frame(in: .global).midY
                Text("Top View \(geometryValue)")
                    .frame(width: geometry.size.width, height: 50)
                    .background(Color.orange)
            }
            
        }
        .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 0, maxHeight: .infinity, alignment: .center)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
