//
//  ShapesView.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct AwardsView: View {
    let awards = Award.getAwards()

    var activeAwards: [Award] {
        awards.filter { $0.awarded }
    }

    var body: some View {
        NavigationView {
            CustomGridView(items: activeAwards, columns: 2) { cellSize, award in
                VStack {
                    award.awardView
                        .frame(width: cellSize, height: cellSize)
                    Text(award.title)
                }
                .padding()
                .frame(width: cellSize, height: cellSize)
            }
            .navigationBarTitle("Awards")
        }
    }
}

@available(iOS 15.0, *)
struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
