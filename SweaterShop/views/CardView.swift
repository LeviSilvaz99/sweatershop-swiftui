//
//  CardView.swift
//  SweaterShop
//
//  Created by Levi  on 23/03/22.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var cardManager: CardManager
    var body: some View {
        ScrollView {
            if cardManager.products.count > 0 {
                ForEach(cardManager.products, id: \.id) {
                    product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cardManager.total).00")
                        .bold()
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            } else {
                Text("Your cart is empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .environmentObject(CardManager())
    }
}
