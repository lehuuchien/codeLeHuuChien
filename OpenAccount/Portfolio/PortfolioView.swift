//
//  PortfolioView.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 30/12/2021.
//

import SwiftUI

struct PortfolioView: View {
    @State private var timerString = "000.000"
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack(spacing: 1){
            ForEach(viewModel.list.indices, id: \.self){ index in
                let item = viewModel.list[index]
                PorItem(model: item)
            }
            Spacer()
        }.padding(.top, 16)
            .background(.black)
            .onAppear {
                viewModel.randomLast()
            }
    }
}

struct PorItem: View {
    @State var checkUp: Bool = false
    @State var timerString = "00.00"
    var model = Model()
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack(alignment: .leading, spacing: 1){
            HStack{
                Text(model.name ?? "")
                    .foregroundColor(.white)
                Spacer()
                Text(self.timerString)
                    .foregroundColor(.white)
                    .onReceive(timer) { _ in
                        let random = model.getRamdomPrice()
                        timerString = String(format: "%.2f", random)
                    }
                    .onAppear {
                        timerString = "00:00"
                    }
                Text("\(model.chg ?? 0 , specifier: "%.2f")")
                    .frame(maxWidth: 70, maxHeight: 30)
                    .background(.green)
                    .cornerRadius(8)
            }
            HStack{
                Text("EQ")
                    .font(.system(size: 13))
                    .foregroundColor(.white)
                    .frame(maxWidth: 30)
                    .background(.blue)
                    .cornerRadius(8)
                Text(model.subName ?? "")
                    .foregroundColor(.gray)
                    .font(.system(size: 13))
            }
        }.padding(.horizontal)
            .frame(maxWidth: .infinity, maxHeight: 60)
            .background(Color(hex: "0F1527"))
    }
}
//------
struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
//
struct Model {
    var name: String?
    var subName: String?
    var chg: Double?
    
    func getRamdomPrice() -> Double {
        let randomDoubleUS = Double.random(in: 99.100...999.990)
        return randomDoubleUS
    }
}
//
class ViewModel: ObservableObject {
    @Published var list:[Model] = []
    func randomLast() {
        
        let data = [Model(name: "Apple.Inc.", subName: "Us.AAPL", chg: 10.18),
                    Model(name: "SamSung.Inc.", subName: "JP.AAPL", chg: 10.18),
                    Model(name: "Xiaomi.Inc.", subName: "VN.AAPL", chg: 10.18)]
        self.list = data
    }
}

