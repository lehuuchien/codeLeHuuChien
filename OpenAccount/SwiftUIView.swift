////
////  SwiftUIView.swift
////  Phase1 (iOS)
////
////  Created by Le Huu Chien on 28/12/2021.
////
//
//import SwiftUI
//typealias Step = (step: Int, isApproved: Bool)
//
//struct StepView: View {
//    init(currentStep: Step, stepTitles: [String]) {
//        self.currentStep = currentStep
//        self.stepTitles = stepTitles
//    }
//
//    var currentStep: Step
//    var stepTitles: [String] = []
//    private var realCurrentStep: Int {
//        return currentStep.step - 1
//    }
//    private var lineWeight: CGFloat = 2
//
//    var body: some View {
//        VStack {
//
//            HStack(spacing: 0) {
//                ForEach(stepTitles.indices) { index in
//                    renderStepView(index: index,
//                                   title: "\(index)")
//                    renderLine(index: index)
//                }
//            }
//            .padding(.horizontal, 16)
//
//            HStack {
//                ForEach(stepTitles.indices) { index in
//                    Color.clear
//                        .frame(maxWidth: .infinity)
//                        .overlay(renderTitleStep(index: index,
//                                                 title: stepTitles[index]),
//                                 alignment: getTitleAlignment(index: index))
//                }
//            }
//            Spacer()
//        }
//        .frame(maxWidth: .infinity, maxHeight: 45)
//    }
//
//    func getTitleAlignment(index: Int) -> Alignment {
//        switch index {
//        case 0:
//            return .leading
//        case stepTitles.count - 1:
//            return .trailing
//        default:
//            return .center
//        }
//    }
//
//    func renderLine(index: Int) -> some View {
//        Group {
//            if index == realCurrentStep - 1 && currentStep.isApproved == false {
//                Color(.gray)
//                    .frame(maxWidth: .infinity,
//                           maxHeight: lineWeight)
//            } else if index < realCurrentStep {
//                Color(.orange)
//                    .frame(maxWidth: .infinity,
//                           maxHeight: lineWeight)
//            } else if index < stepTitles.count - 1 {
//                Color(.gray)
//                    .frame(maxWidth: .infinity,
//                           maxHeight: lineWeight)
//            }
//        }
//    }
//
//    func renderTitleStep(index: Int, title: String? = nil) -> some View {
//        let isPassed = index <= realCurrentStep
//        var color: Color = Color(.gray)
//        if isPassed && currentStep.isApproved == false && index == realCurrentStep {
//            color = Color(.gray)
//        }
//        else if isPassed {
//            color = Color(.orange)
//        }
//        return Text(title ?? "")
//            .foregroundColor(color)
//    }
//
//    func renderStepView(index: Int, title: String? = nil) -> some View {
//        let isPassed = index <= realCurrentStep
//        return Group {
//            if isPassed && currentStep.isApproved == false && index == realCurrentStep {
//                Image("oO")
//                    .frame(width: 17, height: 17)
//            }
//            else if isPassed {
//                Image("oO")
//                    .frame(width: 17, height: 17)
//            }
//            else {
//                Text(title ?? "")
//                    .foregroundColor(Color(.gray))
//                    .frame(width: 17, height: 17)
//                    .background(Color(.gray))
//                    .clipShape(Circle())
//            }
//        }
//    }
//}
//struct StepView_Previews: PreviewProvider {
//    static var previews: some View {
//        StepView(currentStep: Step(3, true),
//                 stepTitles: ["1",
//                              "2",
//                              "3"
//                             ])
//            .background(Color(.black))
//    }
//}
