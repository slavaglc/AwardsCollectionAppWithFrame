//
//  VerticalGridView.swift
//  AwordsCollectionApp
//
//  Created by brubru on 27.09.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct VerticalGridView: View {
    let data = (1...100).map { "Item \($0)" }
    let columns = [
        GridItem(.fixed(70)),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                }
            }
        }
    }
}

struct VerticalGridView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridView()
    }
}
