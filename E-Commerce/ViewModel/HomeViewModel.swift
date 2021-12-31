//
//  HomeViewModel.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 30/12/2021.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var listTitle: [TitleModel] = [TitleModel(title: "Shoes"),
                                              TitleModel(title: "Clothes"),
                                              TitleModel(title: "Fashion"),
                                              TitleModel(title: "Beautyful")]
    @Published var listProduct: [ProductModel] = [ProductModel(sale: "50% off", image: "a1", nameProduct: "Running", price: "$99"),
                                                  ProductModel(sale: "50% off", image: "a1", nameProduct: "Running", price: "$99"),
                                                  ProductModel(sale: "30% off", image: "a2", nameProduct: "smart Watch", price: "$999"),
                                                  ProductModel(sale: "20% off", image: "a1", nameProduct: "Running", price: "$199"),
                                                  ProductModel(sale: "60% off", image: "a2", nameProduct: "Smart Watch", price: "$299"),
                                                  ProductModel(sale: "50% off", image: "a1", nameProduct: "Running", price: "$399")]
    @Published var listRecently: [RecentlyModel] = [RecentlyModel(image: "ao1", name: "Ao Nam"),
                                                    RecentlyModel(image: "ao2", name: "Ao Nam"),
                                                    RecentlyModel(image: "ao3", name: "Ao Nam"),
                                                    RecentlyModel(image: "ao1", name: "Ao Nam")]
    
    @Published var listCart: [ProductModel] = []
    
    //
    func addCart() {
        listCart.append(ProductModel(image: "a1", nameProduct: "Rungning", price: "$99"))
    }
}
