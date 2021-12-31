//
//  AccountView.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 27/12/2021.
//

import SwiftUI

struct AccountView: View {
    @State var value = 0
//    @StateObject var viewModel = AcountViewModel()
    @StateObject var viewModel1 = AccountViewModel()
    var body: some View {
        VStack(alignment: .leading){
            Text("Account Opening Application")
                .bold()
                .foregroundColor(.black)
                .font(.system(size: 18))
                .padding(.horizontal, 16)
            VStack(spacing: 1){
                StepView(currentStep: viewModel1.step, titleStep:[("Registered"), ("Account Created"), ("DepositFunds")])
                    .padding(.vertical)
                switch viewModel1.cureentStepIndex {
                case 1: man1()
                case 2: EmptyView()
                case 3: EmptyView()
                case 4: EmptyView()
                default:
                    EmptyView()
                }
                
                }
                Spacer()
                Button {
                    viewModel1.openClick()
                } label: {
                    Text("Open Account")
                        .foregroundColor(.white)
                        .bold()
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color(hex: "F78E1E"))
                        .cornerRadius(32)
                        .padding(.horizontal, 32)
                }.padding(.bottom)

            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(hex: "141826"))
                .cornerRadius(16)
                .padding(.horizontal, 16)
                .padding(.bottom, 100)
        }
    }
    func man1() -> some View {
        VStack{
            VStack{
                HStack{
                    Image("cau")
                        .frame(width: 20, height: 20)
                    Text("Multi-Asset, Multi-market")
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                    Spacer()
                }
                Text("Gain unparalleled access to over 40,000 products across more than 26 exchanges worldwide including Stocks, ETF, CFD, Forex, Gold, Futures, Unit Trust, Regular Savings Plan (RSP) and more.")
                    .foregroundColor(.gray)
                    .font(.system(size: 13))
                    .padding(.leading, 22)
            }.padding(.horizontal, 32)
            
            HStack{
                    Image("tag")
                VStack(alignment: .leading){
                    Text("Competitive Rates for your Trades")
                        .foregroundColor(.gray)
                        .font(.system(size: 13))
                        .bold()
                    Text("AtPOEMS, you can get value at attractive rates for your trading needs")
                        .foregroundColor(.gray)
                        .font(.system(size: 13))
                }
            }.frame(width: .infinity, height: .infinity)
                .padding(.horizontal, 32)
            
            VStack{
                HStack{
                    Image("tim")
                        .frame(width: 20, height: 20)
                    Text("Multi-Asset, Multi-market")
                        .foregroundColor(.gray)
                    Spacer()
                }
                Text("Gain unparalleled access to over 40,000 products across more than 26 exchanges worldwide including Stocks, ETF, CFD, Forex, Gold, Futures, Unit Trust, Regular Savings Plan (RSP) and more.")
                    .foregroundColor(.gray)
                    .font(.system(size: 13))
                    .padding(.leading, 22)
            }.padding(.horizontal, 32)
        }
    }

class AccountViewModel: ObservableObject {
    @Published var step = (1, true)
    @Published var cureentStepIndex = 1
    
    func openClick() {
        if cureentStepIndex == 4 {
            cureentStepIndex = 1
        }else {
            cureentStepIndex = cureentStepIndex + 1
        }
        switch cureentStepIndex {
        case 1: step = (1, true)
        case 2: step = (2, false)
        case 3: step = (2, true)
        case 4: step = (3, true)
        default:
            break
        }
    }
}


struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
