//
//  Home.swift
//  BankingApp
//
//  Created by minho on 2023/11/23.
//

import SwiftUI

struct Home: View {
    var proxy: ScrollViewProxy
    var size: CGSize
    var safeArea: EdgeInsets
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 10) {
                ProfileCard()
            }
            .padding(.top, safeArea.top + 15)
            .padding(.bottom, safeArea.bottom + 15)
        }
    }
    
    
    @ViewBuilder
    func ProfileCard() -> some View {
        HStack(spacing: 4) {
            Text("Hello")
                .font(.title)
            
            Text("Saitama")
                .font(.title)
                .fontWeight(.bold)
            
            Spacer(minLength: 0)
            
            Image("Pic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
