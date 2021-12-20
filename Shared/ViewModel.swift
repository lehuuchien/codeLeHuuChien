//
//  ViewModel.swift
//  Phase1
//
//  Created by Le Huu Chien on 20/12/2021.
//

import SwiftUI

class IdeasViewModel: ObservableObject {
    @Published var listCommunityIdeas = [ModelCommunityIdeas(image: "view1", title: "Daily Morning Note", article: "Daily Morning Note - 11 August 2021", subArticle: "Aug 11, 2021"),
                                         ModelCommunityIdeas(image: "view2", title: "Daily Morning Note", article: "Daily Morning Note - 11 August 2021", subArticle: "Aug 11, 2021"),
                                         ModelCommunityIdeas(image: "view3", title: "Daily Morning Note", article: "Daily Morning Note - 11 August 2021", subArticle: "Aug 11, 2021"),
                                         ModelCommunityIdeas(image: "new", title: "Daily Morning Note", article: "Daily Morning Note - 11 August 2021", subArticle: "Aug 11, 2021")]
    
    @Published var listCardIndex = [CardIndexModel(title: "Singtel", numberdow: "2.52", datadow: "+0.16 +0.15%", vectordow: "vectordow", like: "like"),
                                      CardIndexModel(title: "OCBC Bank", numberdow: "2.52", datadow: "+0.16 +0.15%", vectordow: "vectorup", like: "like"),
                                      CardIndexModel(title: "Teckcombank", numberdow: "2.52", datadow: "+0.16 +0.15%", vectordow: "vectorup", like: "like")]
    
    @Published var listCardStock = [CardStockModel(title: "Bilibili Inc.", subtitle: "US: BILI", number: "120.64", numbertaget1: "145.00", numbertaget2: "157.60"),
                                    CardStockModel(title: "Roku Inc.", subtitle: "US: ROKU", number: "357.74", numbertaget1: "450.00", numbertaget2: "486.60")]


}

