//
//  CardButton.swift
//  SweaterShop
//
//  Created by Levi  on 23/03/22.
//

import SwiftUI

struct CardButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
            }
            
        }
    }
}

struct CardButton_Previews: PreviewProvider {
    static var previews: some View {
        CardButton(numberOfProducts: 1)
    }
}
