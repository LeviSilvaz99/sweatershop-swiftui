//
//  SwiftUIView.swift
//  SweaterShop
//
//  Created by Levi  on 23/03/22.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cardManager: CardManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                } // MARK: VSTACK
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }// MARK: ZSTACK
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                //chamando a funcao de adicionar no carrinho
                cardManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        
        } // MARK: ZSTACK
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CardManager())
    }
}
