//
//  StepView.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 28/12/2021.
//

import SwiftUI
typealias Step = (step: Int, isApproved: Bool)

struct StepView: View {
    init(currentStep: Step, titleStep:[String]){
        self.currentStep = currentStep
        self.titleStep = titleStep
    }
    var currentStep: Step
    var titleStep:[String] = []
    private var realCurrentStep: Int {
        return currentStep.step - 1
    }
        private var lineWeight: CGFloat = 2
    
    var body: some View {
        VStack {

            HStack(spacing: 0) {
                ForEach(titleStep.indices) { index in
                    renderLine(index: index)
                    renderStep(index: index, title: "\(index)")
                }
            }
            .padding(.horizontal, 16)

            HStack {
                ForEach(titleStep.indices) { index in
                    Color.clear
                        .frame(maxWidth: .infinity)
                        .overlay(renderTitle(index: index, title: titleStep[index]), alignment: getTitleAlignment(index: index))
                }
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: 45)
    }

    func getTitleAlignment(index: Int) -> Alignment {
        switch index {
        case 0:
            return .leading
        case titleStep.count - 1:
            return .trailing
        default:
            return .center
        }
    }
    
    func renderLine(index: Int) -> some View {
        Group {
            if index > 0 {
                Color(.gray)
                    .frame(maxWidth: .infinity,
                           maxHeight: lineWeight)
            }
        }
    }
    
    func renderStep(index: Int, title: String? = nil) -> some View {
        let isPassed = index <= realCurrentStep
        return Group {
            if isPassed && currentStep.isApproved == false && index == realCurrentStep {
                Image("false")
            }else if isPassed {
                ZStack{
                    Image("oO")
                    Image("k")
                }
            }else {
                    Text(title ?? "")
                        .foregroundColor(Color(.gray))
                        .frame(width: 17, height: 17)
                        .background(Color(.gray))
                        .clipShape(Circle())
            }
        }
    }
    func renderTitle(index: Int, title: String? = nil) ->some View {
        let isPassed = index <= realCurrentStep
        var color: Color = Color(.gray)
        if isPassed && currentStep.isApproved == false && index == realCurrentStep {
            color = Color(.gray)
        }else if isPassed {
            color = Color(.orange)
        }
        return Text(title ?? "")
            .foregroundColor(color)
            .font(.system(size: 12))
            .padding(.horizontal)
    }
}

struct StepView_Previews: PreviewProvider {
    static var previews: some View {
        StepView(currentStep: (3, true), titleStep:[("Registered"), ("Account Created"), ("DepositFunds")])
    }
}
