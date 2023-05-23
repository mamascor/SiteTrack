//
//  ProductCell.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/23/23.
//

import SwiftUI

struct ProductCell: View {
    var body: some View {
        HStack {
            Image("cereal")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .cornerRadius(7)
            
            VStack(alignment: .leading) {
                Text("Honey Walnut Cereal")
                    .foregroundColor(.accentWhite)
                    .fontWeight(.bold)
                Text("Honey Walnut Cereal")
                    .foregroundColor(.accentWhite)
                    .font(.subheadline)
                    .fontWeight(.light)
                
                HStack {
                    Image(systemName: "hourglass")
                        .foregroundColor(.accentYellow)
                    
                    Text("9/26/23")
                        .foregroundColor(.accentWhite)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell()
    }
}
