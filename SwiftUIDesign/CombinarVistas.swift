//
//  CombinarVistas.swift
//  SwiftUIDesign
//
//  Created by edeluz on 23/06/22.
//

import SwiftUI

struct CombinarVistas: View {
    var body: some View {
        VStack {
            MapView()
            Divider()
            ContentView()
        }
    }
}

struct CombinarVistas_Previews: PreviewProvider {
    static var previews: some View {
        CombinarVistas()
    }
}
